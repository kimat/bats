#!/usr/bin/env bats

@test "grub fix" {
  sed -i '/.*set timeout=-.*/c\  set timeout=5' /etc/grub.d/00_header
  update-grub
}

@test "[core] time" {
  echo "Europe/Brussels" | tee /etc/timezone
  dpkg-reconfigure --frontend noninteractive tzdata
}

