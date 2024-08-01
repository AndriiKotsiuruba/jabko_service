#!/usr/bin/env bash

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

# yarn husky install

bundle exec rake db:create
bundle exec rake db:migrate

exec "$@"
