#!/bin/sh

##
# Runit run script for the development server daemon
#

# Ensure postgresql is running
run startdb || exit 1

cd /var/www

# Start the rails server.
/sbin/setuser www-data bundle exec rails server
