#!/bin/sh

#If no cores are configured, set them up
#if at least one core is there, leave things along as it may be intentional
if [ ! -d /var/solr/data/default ] && [ ! -d /var/solr/data/test ] && [ ! -d /var/solr/data/development ]; then
  cp -R ./bootstrap/* /var/solr/data/
fi

/opt/docker-solr/scripts/docker-entrypoint.sh "$@"
