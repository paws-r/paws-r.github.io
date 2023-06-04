<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_get_deployment_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a deployment configuration

### Description

Gets information about a deployment configuration.

### Usage

    codedeploy_get_deployment_config(deploymentConfigName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_get_deployment_config_:_deploymentConfigName">deploymentConfigName</code></td>
<td><p>[required] The name of a deployment configuration associated with
the IAM user or Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deploymentConfigInfo = list(
        deploymentConfigId = "string",
        deploymentConfigName = "string",
        minimumHealthyHosts = list(
          type = "HOST_COUNT"|"FLEET_PERCENT",
          value = 123
        ),
        createTime = as.POSIXct(
          "2015-01-01"
        ),
        computePlatform = "Server"|"Lambda"|"ECS",
        trafficRoutingConfig = list(
          type = "TimeBasedCanary"|"TimeBasedLinear"|"AllAtOnce",
          timeBasedCanary = list(
            canaryPercentage = 123,
            canaryInterval = 123
          ),
          timeBasedLinear = list(
            linearPercentage = 123,
            linearInterval = 123
          )
        )
      )
    )

### Request syntax

    svc$get_deployment_config(
      deploymentConfigName = "string"
    )
