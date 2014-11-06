#!/usr/bin/env bats
@test "postgresql" {
apt-get install -y --no-install-recommends libpq-dev
apt-get install -y --no-install-recommends postgresql-client
}
