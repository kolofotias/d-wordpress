FROM davask/d-php-letsencrypt:5.6-a2.4-u16.04
MAINTAINER davask <docker@davaskweblimited.com>
USER root
LABEL dwl.app.cms="WordPress 4.4.2"

# Copy instantiation specific file
COPY ./build/dwl/get-wordpress.sh \
COPY ./build/dwl/fix-wordpress-permissions.sh \
COPY ./build/dwl/init.sh \
/dwl/

CMD ["/dwl/init.sh && service sendmail start && apachectl -k graceful && /bin/bash"]

RUN chmod +x /dwl/init.sh && chown root:sudo -R /dwl
USER admin
