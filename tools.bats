#!/usr/bin/env bats

@test "deb little tools" {
  apt-get -y install vim htop atool ncdu tree screen fping fail2ban build-essential curl tmux
}

@test "python tools" {
  apt-get -y install python-setuptools python-pip
}


