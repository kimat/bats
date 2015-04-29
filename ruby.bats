#!/usr/bin/env bats

@test "ruby tools" {
# maybe better : [RVM with Vagrant](http://rvm.io/integration/vagrant)
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
curl -#L https://get.rvm.io | bash -s stable --autolibs=3 --ruby ;
# if root :
# source /usr/local/rvm/scripts/rvm
source /home/vagrant/.rvm/scripts/rvm
gem install bundler pry gist
gem install rails railties
}
