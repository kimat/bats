#!/usr/bin/env bats
# install on ubuntu 12.04 & php 5.4 preferrably
@test "humhub" {
apt-get update -y
apt-get install -y bash
apt-get install -y --no-install-recommends imagemagick
apt-get install -y --no-install-recommends php5
apt-get install -y --no-install-recommends mysql-server-5.6
apt-get install -y --no-install-recommends php5-cli php5-gd php5-mysql php5-curl
apt-get install -y --no-install-recommends php5-ldap php-apc php5-memcached libapache2-mod-xsendfile php5-sqlite

cd /var/www &&  git clone https://github.com/humhub/humhub.git
}

# find apache user :
# /etc/apche -> user - groupp
# sudo chown -R www-data:www-data html
# mysql -u root -p
