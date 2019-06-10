FROM docker.elastic.co/kibana/kibana-oss:6.5.4

ENV NODE_OPTIONS="--max-old-space-size=3072"

RUN ./bin/kibana-plugin install https://github.com/sivasamyk/logtrail/releases/download/v0.1.30/logtrail-6.5.4-0.1.30.zip

COPY logtrail.json plugins/logtrail/logtrail.json

