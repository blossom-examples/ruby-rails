#!/bin/bash -eux
# Blossom provides the database and its scoped role; only migrate and seed.
echo "Setting up database..."
bundle exec rails db:migrate
bundle exec rails db:seed