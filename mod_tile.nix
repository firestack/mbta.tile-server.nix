{ lib
, stdenv
, fetchFromGitHub

, apacheHttpd
, apr
, aprutil
, autoreconfHook
, boost
, cairo
, cmake
, curl
, glib
, harfbuzz
, icu
, iniparser
, libtiff
, libwebp
, mapnik
, pkgconfig
, proj
, sqlite
}:

stdenv.mkDerivation rec {
	pname = "mod-tile";
	version = "be0d5fe2567d058d4dcbc0fb6d3f178b74be5a51";

	src = fetchFromGitHub {
		owner = "openstreetmap";
		repo = "mod_tile";
		rev = version;
		# hash = "sha256-0cwUUoiRChTaYdFxAdtm+Mn8ZKVyse7jYF4t7jF6u3Y=";
		hash = "sha256-/EGha2hXcjjZqlh3hWaNiwdytZFYRAWbHfsqSYjs5+k=";
	};

	# CFLAGS = "_DEFAULT_SOURCE=1";
	# buildFlags = ["_DEFAULT_SOURCE=1" "-ansi"];

	# configureFlags = [
	# 	"--with-apr=${apr.dev}"
	# 	"--with-apr-util=${aprutil.dev}"
	# ];

	nativeBuildInputs = [
		autoreconfHook
		# cmake

		apacheHttpd
		apr
		aprutil
		boost
		cairo
		curl
		glib
		harfbuzz
		icu
		iniparser
		libtiff
		libwebp
		mapnik
		pkgconfig
		proj
		sqlite
	];


	installFlags = [
		"INCLUDEDIR=${placeholder "out"}/include"
		"LIBEXECDIR=${placeholder "out"}/modules"
		"DESTDIR=${placeholder "out"}"
	];

		# substituteInPlace src/daemon.c --replace '<iniparser/iniparser.h>' '<iniparser.h>'
		# substituteInPlace src/gen_tile_test.cpp --replace '<mapnik/box2d.hpp>' '<mapnik/geometry/box2d.hpp>'
	# preBuild = ''
	# 	buildFlagsArray+=(CFLAGS="-ansi" _DEFAULT_SOURCE=1)
	# '';

	# buildInputs = [
	# ];

	# preConfigure = "bash ./autogen.sh";
	installTargets = "install install-mod_tile";

	meta = with lib; {
		description = "Renders map tiles with mapnik and serves them using apache";
		homepage = "https://github.com/openstreetmap/mod_tile";
		license = licenses.gpl2Only;
		maintainers = with maintainers; [ ];
	};
}
