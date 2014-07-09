#!/usr/bin/env bats
@test "bower"{
apt-get install -y --no-install-recommends nodejs
apt-get install -y --no-install-recommends npm
npm install -g bower
}
