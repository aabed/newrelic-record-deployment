# Hello world docker action

As per Newrelic
> Deploying an app can be a risky event—when your app breaks, a bad deployment is often the cause. New Relic allows you to track deployments so you can correlate deploy to your app's performance. Tracking deployments creates deployment markers that appear in APM charts.

This action adds a deployment marker to your application graphs on Newrelic and a new deployment to be recorded in your application.

## Inputs

| Name        | Description | Required| Default Value|
| ----------- | ----------- |  ----------- |  ----------- |
| newrelic-license-key      | The license key for your Newrelic account | Yes | N/A
| newrelic-api-key          |   Newrelic API key                        | Yes | N/A
| newrelic-application-name |   Newrelic application name                 | Yes | N/A
| deployment-description    | Describe your deployment                  | No | New deployment by Github Actions
| deployment-revision       | Deployment revision                       | No | Unknown
| deployment-changelog      | Deployment changelog                      | No | N/A
| deployment-user           | Deployer name                      | No | Github Actions


## Example usage

``` YAML
on: [push]

jobs:
  test_deployment_marker:
    runs-on: ubuntu-latest
    name: Testing
    steps:
      - name: Testing
        uses: aabed/newrelic-deployment@v1
        with:
          newrelic-license-key: ${{ secrets.NEWRELIC_LICENSE_KEY }}
          newrelic-api-key: ${{ secrets.NEWRELIC_API_KEY }}
          newrelic-application-name: "My Application"
          deployment-description: "Testing"
          #deployment-revision: "12345"
          #deployment-changelog: "Test Change"
          #deployment-user: "Github"


```

## Extra resources

### How to get your license and API keys
https://docs.newrelic.com/docs/apis/intro-apis/new-relic-api-keys/

