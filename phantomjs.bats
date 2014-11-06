#!/usr/bin/env bats
@test "phantomjs" {
apt-get install -y --no-install-recommends build-essential chrpath git-core libssl-dev libfontconfig1-dev libxft-dev
git clone --depth 1 -b 1.9 git://github.com/ariya/phantomjs.git
cd phantomjs
./build.sh --confirm
}
