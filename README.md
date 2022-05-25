# nbgallery-solr
Docker container with Solr 9 pre-configured for nbgallery using sunspot with default/test/development cores

The 9.0 based images will attempt to update any cores from 8.x but test before deploying to your environment (or just create a file in your data volume called `_solr_9_upgrade' which maps to path /var/solr/data/_solr_9_upgrade in the container)

To have persistence of the data, map a volume to /var/solr/data

To delete the any of the cores, use a persistent volume, bring up the container, kill it, and then delete the directories of whatever cores you don't want (default is production, development and test)

Image available as nbgallery/solr
