#!/usr/bin/env bats
@test "ffmpeg" {
# apt-add-repository ppa:jon-severinsson/ffmpeg -y
# apt-get update
# apt-get install -y --no-install-recommends ffmpeg
# apt-get install -y yasm
# git clone git://source.ffmpeg.org/ffmpeg.git ffmpeg

cd ~/tmp
wget http://ffmpeg.org/releases/ffmpeg-2.3.tar.bz2
aunpack ffmpeg-2.3.tar.bz2
cd ffmpeg-2.3
./configure
make
checkinstall -y
}
