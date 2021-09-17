# Container image that runs your code
FROM python:alpine
WORKDIR /newrelic-deployment
RUN pip install newrelic
RUN apk add gettext
COPY entrypoint.sh entrypoint.sh
COPY newrelic.ini.tmpl newrelic.ini.tmpl
ENTRYPOINT ["/newrelic-deployment/entrypoint.sh"]
