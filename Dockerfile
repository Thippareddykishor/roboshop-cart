# FROM        docker.io/node
# USER        node
# WORKDIR     /home/node
# COPY        node_modules/ node_modules/
# COPY        server.js server.js
# ENTRYPOINT [ "node","-r","newrelic","server.js" ]


FROM         docker.io/redhat/ub19
RUN          useradd node
USER         node
WORKDIR      /home/node
COPY         node_modules/ node_modules/
COPY         server.js  server.js
ENTRYPOINT [ "node", "-r","newrelic" ,"server.js" ]