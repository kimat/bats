#!/usr/bin/env bats

@test "ruby tools" {
  # maybe better : [RVM with Vagrant](http://rvm.io/integration/vagrant)
  curl -#L https://get.rvm.io | bash -s stable --autolibs=3 --ruby ;
  source /usr/local/rvm/scripts/rvm
  gem install bundler pry
}
