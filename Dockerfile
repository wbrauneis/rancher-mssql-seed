FROM rancher/confd:v0.12.0-alpha3
LABEL maintainer "wolfgang.brauneis@e-mundo.de"

ADD ./mssql_seed.sh /usr/share/mssql/rancher-seed/mssql_seed.sh
ADD ./provision.sh /usr/share/mssql/rancher-seed/provision.sh

VOLUME /usr/share/mssql/rancher-seed

ENTRYPOINT ["confd"]

CMD ["--backend", "rancher", "--prefix", "/2015-07-25"]