{ lib
, dockerTools
, postgresql
, osm2pgsql
, mapnik
, carto
, bash
}: dockerTools.buildLayeredImage {
	name = "MBTA Tile Server";
	tag = "nix";

	contents = [
		(postgresql.withPackages (ps: [
			ps.postgis
		]))

		osm2pgsql

		mapnik

		carto

		bash

		## fonts
		# noto-cjk
		# noto-hinted
		# noto-unhinted
		# hanazono
		# unifont
		# dejavu
		# dejavu-core
		# dejavu-extra
		# cabextrat

		# todo: figure out how to render with and without apache
		# apache
		# apacheHttpdPackages.mod_tile
		# # renderd # provided by `mod_tile`
		
		# kosmtik
	];
}
