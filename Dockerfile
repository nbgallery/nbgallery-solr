FROM solr:8
MAINTAINER team@nb.gallery

COPY nbgallery-docker-entrypoint.sh /opt/docker-solr/scripts
COPY ./config/ /opt/solr/bootstrap

ENTRYPOINT ["nbgallery-docker-entrypoint.sh"]
CMD ["solr-foreground"]

LABEL gallery.nb.description="SOLR Container pre-configured with sunspot for NBGallery" \
      gallery.nb.URL="https://github.com/nbgallery/nbgallery-solr"
