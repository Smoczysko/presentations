#!/bin/bash

clear

CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
BACKEND_DIR="$CURRENT_DIR/asciidoctor-backends/slim/dzslides"

echo "Copying DZSlides backend files..."
cp -r dzslides $1

echo "Asciidoctor compilation..."
cd $1
asciidoctor -b dzslides -T $BACKEND_DIR slides.adoc

echo "Removing DZSlides backend files..."
rm -rf dzslides
cd -