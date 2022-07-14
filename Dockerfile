FROM couchbase:7.1.1

# COPY var /opt/couchbase/var
COPY scripts/configure-node.sh /etc/service/config-couchbase/run
COPY scripts/create-document.txt /opt/couchbase
COPY scripts/create-index.json /opt/couchbase
COPY scripts/create-ddoc.json /opt/couchbase
COPY scripts/create-dataset.json /opt/couchbase
