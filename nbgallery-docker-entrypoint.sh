#!/bin/sh

#If no cores are configured, set them up
#if at least one core is there, leave things along as it may be intentional
if [ ! -d /var/solr/data/default ] && [ ! -d /var/solr/data/test ] && [ ! -d /var/solr/data/development ]; then
  cp -R /opt/solr/bootstrap/* /var/solr/data/
fi

#Check for upgrade SOLR 8 -> SOLR 9
if [ ! -e /var/solr/data/_solr_9_upgrade ]; then
  cd /var/solr/data/
  for core in */; do
    if [ -d /opt/solr/bootstrap/$core ]; then
      echo "Upgrading $core" >> /var/solr/data/_solr_9_upgrade
      cp /opt/solr/bootstrap/$core/solrconfig.xml ./$core/
    fi
  done
  cd /opt/solr
fi

/opt/solr/docker/scripts/docker-entrypoint.sh "$@"
