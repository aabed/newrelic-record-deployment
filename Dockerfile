# Container image that runs your code
FROM python:alpine
RUN pip install newrelic
COPY entrypoint.sh /entrypoint.sh
COPY newrelic.ini.tmpl /newrelic.ini.tmpl
ENTRYPOINT ["/entrypoint.sh"]