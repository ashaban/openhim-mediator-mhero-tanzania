#!/bin/bash
set -e

mkdir -p targets/trusty/usr/share
rm -rf targets/trusty/usr/share/*

echo "Cloning base mediators..."
git clone https://github.com/openhie/openhim-mediator-mhero-liberia.git targets/trusty/usr/share/openhim-mediator-mhero-liberia
echo "Done."

echo "Downloading module dependencies..."
(cd targets/trusty/usr/share/openhim-mediator-mhero-liberia/ && npm install)
echo "Done."
