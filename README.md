# nbgallery-solr
Docker container with Solr 8 pre-configured for nbgallery using sunspot with default/test/development cores

To have persistence of the data, map a volume to /var/solr/data

To delete the any of the cores, use a persistent volume, bring up the container, kill it, and then delete the directories of whatever cores you don't want (default is production, development and test)

Image available as nbgallery/solr
