FROM httpd:2.2.34-alpine

# installing supervisor
ENV PY_PIP_VERSION=8.1.2-r0
ENV SUPERVISOR_VERSION=3.3.3

RUN apk update && apk add -u py-pip=$PY_PIP_VERSION
RUN pip install supervisor==$SUPERVISOR_VERSION

COPY index.html /usr/local/apache2/htdocs/
COPY supervisord.conf /etc/supervisord.conf

ENTRYPOINT ["./docker-entrypoint.sh"]
