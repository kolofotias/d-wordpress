# dockerfile

see [FROM IMAGE README.md](https://github.com/davask/d-php-letsencrypt)

### WORDPRESS 4.4.2 activation

#### comment

- to avoid init error all conf file in /etc/apache2/sites-available have to be in the format of sub.domain.ext.conf like docker.davaskweblimited.com.conf

- On start all *.conf in /etc/apache2/sites-available are enabled

## LABEL

> dwl.app.cms="php4.4.2"

