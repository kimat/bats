#!/usr/bin/env bats
@test "redis server" {
cd /usr/local/src
wget http://download.redis.io/redis-stable.tar.gz
aunpack redis-stable.tar.gz
rm redis-stable.tar.gz
cd redis-stable
make
make install
mkdir /etc/redis
mv redis.conf /etc/redis/redis.conf
}

