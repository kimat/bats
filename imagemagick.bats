#!/usr/bin/env bats
#
@test "imagemagick without X" {
apt-get install -y --no-install-recommends imagemagick
}

