#! /bin/bash

set -e

cd /AppImageKit/build

cd out/
ARCH=$(uname -m)
./appimagetool.AppDir/AppRun ./appimagetool.AppDir/ -s -v \
    -u "gh-releases-zsync|AppImage|AppImageKit|continuous|appimagetool-$ARCH.AppImage.zsync" \
    appimagetool-"$ARCH".AppImage || true
