#!/bin/bash

clear

echo "Copying DZSlides backend files..."
cp -r dzslides $1

echo "Asciidoctor compilation..."
cd $1
asciidoctor -b dzslides -T ../asciidoctor-backends/slim/dzslides slides.adoc

echo "Removing DZSlides backend files..."
rm -rf dzslides
cd ..