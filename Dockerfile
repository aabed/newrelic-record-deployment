# Container image that runs your code
FROM python:alpine
RUN pip install newrelic
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]