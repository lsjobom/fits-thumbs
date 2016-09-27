#!/bin/bash
# Assumes that script is called on the form ./ds9thumb.sh picname RA DEC
# with RA and DEC given in decimal degrees. Output png picture will be placed in subdirectory pics.
# Might break, and requires ds9 to be closed manually

ID=$1
COORDS="$2 $3"
FNAME=/path/to/foo.fits

echo $ID
echo $COORDS

ds9 $FNAME -wcs skyformat degrees -zscale -crop $COORDS 3 3 wcs fk5 arcsec -zoom to fit -export png ./pics/$ID.png
