#!/bin/sh
pwd
ls
envsubst < /newrelic-deployment/newrelic.ini.tmpl > /newrelic-deployment/newrelic.ini
newrelic-admin record-deploy /newrelic-deployment/newrelic.ini $DEPLOYMENT_DESCRIPTION $DEPLOYMENT_REVISION $DEPLOYMENT_CHANGELOG $DEPLOYMENT_USER