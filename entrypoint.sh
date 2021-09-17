#!/bin/sh -l
envsubst <newrelic.ini.tmpl>newrelic.ini
newrelic-admin record-deploy newrelic.ini $DEPLOYMENT_DESCRIPTION $DEPLOYMENT_REVISION $DEPLOYMENT_CHANGELOG $DEPLOYMENT_USER