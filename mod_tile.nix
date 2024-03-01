{ lib
, stdenv
, fetchFromGitHub
, autoreconfHook
, glib
, pkgconfig
, apacheHttpd
, iniparser
, mapnik
, boost
, icu
, harfbuzz
, cairo
, proj
, sqlite
, libtiff
, libwebp
}:

stdenv.mkDerivation rec {
	pname = "mod-tile";
	version = "0.6.1";

	src = fetchFromGitHub {
		owner = "openstreetmap";
		repo = "mod_tile";
		rev = version;
		hash = "sha256-0cwUUoiRChTaYdFxAdtm+Mn8ZKVyse7jYF4t7jF6u3Y=";
	};

	# CFLAGS = "_DEFAULT_SOURCE=1";
	# buildFlags = ["_DEFAULT_SOURCE=1" "-ansi"];

	nativeBuildInputs = [
		autoreconfHook
		glib
		pkgconfig
		apacheHttpd
		iniparser
		mapnik
		boost
		icu
		harfbuzz
		cairo
		proj
		sqlite
		libtiff
		libwebp
	];

	preBuild = ''
		buildFlagsArray+=(CFLAGS="-ansi" _DEFAULT_SOURCE=1)
		substituteInPlace src/daemon.c --replace '<iniparser/iniparser.h>' '<iniparser.h>'
		substituteInPlace src/gen_tile_test.cpp --replace '<mapnik/box2d.hpp>' '<mapnik/geometry/box2d.hpp>'
	'';

	# buildInputs = [
	# ];

	preConfigure = "bash ./autogen.sh";
	installTargets = "install-mod_tile";

	meta = with lib; {
		description = "Renders map tiles with mapnik and serves them using apache";
		homepage = "https://github.com/openstreetmap/mod_tile";
		license = licenses.gpl2Only;
		maintainers = with maintainers; [ ];
	};
}
