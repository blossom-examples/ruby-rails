#!/bin/bash -eux
echo "Setting up database..."
echo "DATABASE_URL: $DATABASE_URL"
bundle exec rails db:create
bundle exec rails db:migrate
bundle exec rails db:seed