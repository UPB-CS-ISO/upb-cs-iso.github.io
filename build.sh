#!/bin/bash

set -e

cd slides
npm install
rm -rf ../website/static/slides
echo Building Slides
SLIDES_OUTPUT_FOLDER=../website/static/slides ./build.sh

cd ..
cd website
npm install
npm run clear
npm run build
