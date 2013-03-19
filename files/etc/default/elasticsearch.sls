# Run ElasticSearch as this user ID and group ID
#ES_USER=elasticsearch
#ES_GROUP=elasticsearch

# Heap Size (defaults to 256m min, 1g max)
# Per http://www.elasticsearch.org/tutorials/2012/05/19/elasticsearch-for-logging.html
# Rule of thumb is allocate half the total memory to ES.
ES_HEAP_SIZE={{ (grains['mem_total'] / 2) | int }}m

# Heap new generation
#ES_HEAP_NEWSIZE=

# max direct memory
#ES_DIRECT_SIZE=

# Maximum number of open files, defaults to 65535.
MAX_OPEN_FILES=65535

# Maximum locked memory size. Set to "unlimited" if you use the
# bootstrap.mlockall option in elasticsearch.yml. You must also set
# ES_HEAP_SIZE.
#MAX_LOCKED_MEMORY=unlimited

# ElasticSearch log directory
#LOG_DIR=/var/log/elasticsearch

# ElasticSearch data directory
#DATA_DIR=/var/lib/elasticsearch

# ElasticSearch work directory
#WORK_DIR=/tmp/elasticsearch

# ElasticSearch configuration directory
#CONF_DIR=/etc/elasticsearch

# ElasticSearch configuration file (elasticsearch.yml)
#CONF_FILE=/etc/elasticsearch/elasticsearch.yml

# Additional Java OPTS
#ES_JAVA_OPTS=
