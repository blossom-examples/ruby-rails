#!/bin/bash -eux
bundle exec rails db:create
bundle exec rails db:migrate
