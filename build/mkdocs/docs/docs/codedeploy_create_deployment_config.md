<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codedeploy_create_deployment_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a deployment configuration

### Description

Creates a deployment configuration.

### Usage

    codedeploy_create_deployment_config(deploymentConfigName,
      minimumHealthyHosts, trafficRoutingConfig, computePlatform)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_config_:_deploymentConfigName">deploymentConfigName</code></td>
<td><p>[required] The name of the deployment configuration to
create.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_config_:_minimumHealthyHosts">minimumHealthyHosts</code></td>
<td><p>The minimum number of healthy instances that should be available
at any time during the deployment. There are two parameters expected in
the input: type and value.</p>
<p>The type parameter takes either of the following values:</p>
<ul>
<li><p>HOST_COUNT: The value parameter represents the minimum number of
healthy instances as an absolute value.</p></li>
<li><p>FLEET_PERCENT: The value parameter represents the minimum number
of healthy instances as a percentage of the total number of instances in
the deployment. If you specify FLEET_PERCENT, at the start of the
deployment, CodeDeploy converts the percentage to the equivalent number
of instances and rounds up fractional instances.</p></li>
</ul>
<p>The value parameter takes an integer.</p>
<p>For example, to set a minimum of 95% healthy instance, specify a type
of FLEET_PERCENT and a value of 95.</p></td>
</tr>
<tr class="odd">
<td><code
id="codedeploy_create_deployment_config_:_trafficRoutingConfig">trafficRoutingConfig</code></td>
<td><p>The configuration that specifies how the deployment traffic is
routed.</p></td>
</tr>
<tr class="even">
<td><code
id="codedeploy_create_deployment_config_:_computePlatform">computePlatform</code></td>
<td><p>The destination platform type for the deployment
(<code>Lambda</code>, <code>Server</code>, or
<code>ECS</code>).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      deploymentConfigId = "string"
    )

### Request syntax

    svc$create_deployment_config(
      deploymentConfigName = "string",
      minimumHealthyHosts = list(
        type = "HOST_COUNT"|"FLEET_PERCENT",
        value = 123
      ),
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
      ),
      computePlatform = "Server"|"Lambda"|"ECS"
    )
