#!/bin/bash
set -e

# if 'copy' is passed as a command to run, just copy tiles between buckets and exit
if [ "$1" == "copy" ]; then
    if [ -n "${SOURCE_S3_PATH}" -a -n "${DESTINATION_S3_PATH}" ]; then
        aws s3 sync "${SOURCE_S3_PATH}" "${DESTINATION_S3_PATH}"
    else
        echo "Error: SOURCE_S3_PATH and DESTINATION_S3_PATH env vars are both required."
    fi
    exit
fi

service postgresql start

# load map data
sudo -E -H -u postgres /load_map_data.sh

# make sure all apache sites are disabled to start
for site in `ls -1 /etc/apache2/sites-enabled`; do
    a2dissite "${site#\.conf}"
done

# if 'kosmtik' is passed as a command to run, enter style editing mode
if [ "$1" == "kosmtik" ]; then
    a2ensite kosmtik
    service apache2 restart
    sudo -H -u postgres kosmtik serve /style/output/OSMSmartrak/project.mml
fi

if [ -z "${S3_SUBDIRECTORY}" ]; then
  S3_SUBDIRECTORY="osm_tiles"
fi

# if 'tiles' is passed as a command to run, generate and publish tiles
if [ "$1" == "tiles" ]; then
    sudo -E -u postgres /var/lib/postgresql/src/generate_tiles.py
    if [ -n "${MAPNIK_TILE_S3_BUCKET}" ]; then
        [[ "${S3_FORCE_OVERWRITE}" = "1" ]] && S3_ARGS= || S3_ARGS="--size-only"
        cd /var/lib/mod_tile/ && aws s3 sync . "s3://${MAPNIK_TILE_S3_BUCKET}/${S3_SUBDIRECTORY}/" ${S3_ARGS}
        echo "AWS S3 sync has completed successfully"
    fi
fi

# if no commands were passed, run renderd
if [ "$#" -eq 0 ]; then
    a2ensite renderd
    service apache2 restart
    sudo -u postgres renderd -f -c /usr/local/etc/renderd.conf
fi
