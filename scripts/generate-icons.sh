#!/bin/sh
set -e
# Generate optimized logo assets from source logo
# Requires ImageMagick's `convert` command

SRC="White Logo One-Weekend Websites.png"

# create 64x64 logo for header and favicon source
convert "$SRC" -resize 64x64 logo-64.png

# favicon PNG (32x32)
convert logo-64.png -resize 32x32 favicon.png

# favicon ICO (contains 16,32,48 sizes)
convert logo-64.png -resize 16x16 favicon-16.png
convert logo-64.png -resize 32x32 favicon-32.png
convert logo-64.png -resize 48x48 favicon-48.png
convert favicon-16.png favicon-32.png favicon-48.png favicon.ico
rm favicon-16.png favicon-32.png favicon-48.png

# high-res logo for social sharing (512x512)
convert "$SRC" -resize 512x512 logo.png

# Apple touch icon (180x180)
convert "$SRC" -resize 180x180 apple-touch-icon.png

echo "Generated logo-64.png, favicon.png, favicon.ico, logo.png, and apple-touch-icon.png"
