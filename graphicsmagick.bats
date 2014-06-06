#!/usr/bin/env bats
@test "graphicsmagick an imagemagick alt" {
cd /usr/local/src
curl --location --output GraphicsMagick-1.3.19.tar.gz http://download.sourceforge.net/graphicsmagick/GraphicsMagick-1.3.19.tar.gz
aunpack GraphicsMagick-1.3.19.tar.gz
cd GraphicsMagick-1.3.19
./configure --without-x
make
make install
}
