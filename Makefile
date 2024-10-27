FG_SCENERY=${HOME}/.local/share/scenery/local-scenery-mods

TARGET_DIR=Objects/w080n40/w076n44/

FILES=johnstown-grain-elevator.ac

VIEW_LAT=44.73549398
VIEW_LON=-75.46913511
VIEW_HDG=215
VIEW_ALT=400

install:
	cp ${FILES} ${FG_SCENERY}/${TARGET_DIR}

view: install
	fgfs --aircraft=ufo --disable-sound --console --timeofday=noon --lat=${VIEW_LAT} --lon=${VIEW_LON} --heading=${VIEW_HDG} --altitude=${VIEW_ALT}

view-dawn: install
	fgfs --aircraft=ufo --disable-sound --console --timeofday=dawn --lat=${VIEW_LAT} --lon=${VIEW_LON} --heading=${VIEW_HDG} --altitude=${VIEW_ALT}

view-dusk: install
	fgfs --aircraft=ufo --disable-sound --console --timeofday=dusk --lat=${VIEW_LAT} --lon=${VIEW_LON} --heading=${VIEW_HDG} --altitude=${VIEW_ALT}

view-night: install
	fgfs --aircraft=ufo --disable-sound --console --timeofday=midnight --lat=${VIEW_LAT} --lon=${VIEW_LON} --heading=${VIEW_HDG} --altitude=${VIEW_ALT}
