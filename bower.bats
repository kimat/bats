#!/usr/bin/env bats
@test "bower" {
apt-get install -y --no-install-recommends nodejs
apt-get install -y --no-install-recommends npm
ln -s /usr/bin/nodejs /usr/local/bin/node
npm install -g bower
}
