<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_update_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deploys the new EndpointConfig specified in the request, switches to using newly created endpoint, and then deletes resources provisioned for the endpoint using the previous EndpointConfig (there is no availability loss)

### Description

Deploys the new `EndpointConfig` specified in the request, switches to
using newly created endpoint, and then deletes resources provisioned for
the endpoint using the previous `EndpointConfig` (there is no
availability loss).

When SageMaker receives the request, it sets the endpoint status to
`Updating`. After updating the endpoint, it sets the status to
`InService`. To check the status of an endpoint, use the
`describe_endpoint` API.

You must not delete an `EndpointConfig` in use by an endpoint that is
live or while the `update_endpoint` or `create_endpoint` operations are
being performed on the endpoint. To update an endpoint, you must create
a new `EndpointConfig`.

If you delete the `EndpointConfig` of an endpoint that is active or
being created or updated you may lose visibility into the instance type
the endpoint is using. The endpoint must be deleted in order to stop
incurring charges.

### Usage

    sagemaker_update_endpoint(EndpointName, EndpointConfigName,
      RetainAllVariantProperties, ExcludeRetainedVariantProperties,
      DeploymentConfig, RetainDeploymentConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_update_endpoint_:_EndpointName">EndpointName</code></td>
<td><p>[required] The name of the endpoint whose configuration you want
to update.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_endpoint_:_EndpointConfigName">EndpointConfigName</code></td>
<td><p>[required] The name of the new endpoint configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_endpoint_:_RetainAllVariantProperties">RetainAllVariantProperties</code></td>
<td><p>When updating endpoint resources, enables or disables the
retention of <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VariantProperty.html">variant
properties</a>, such as the instance count or the variant weight. To
retain the variant properties of an endpoint when updating it, set
<code>RetainAllVariantProperties</code> to <code>true</code>. To use the
variant properties specified in a new <code>EndpointConfig</code> call
when updating an endpoint, set <code>RetainAllVariantProperties</code>
to <code>false</code>. The default is <code>false</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_endpoint_:_ExcludeRetainedVariantProperties">ExcludeRetainedVariantProperties</code></td>
<td><p>When you are updating endpoint resources with
<code>RetainAllVariantProperties</code>, whose value is set to
<code>true</code>, <code>ExcludeRetainedVariantProperties</code>
specifies the list of type <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VariantProperty.html">VariantProperty</a>
to override with the values provided by <code>EndpointConfig</code>. If
you don't specify a value for
<code>ExcludeRetainedVariantProperties</code>, no variant properties are
overridden.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_update_endpoint_:_DeploymentConfig">DeploymentConfig</code></td>
<td><p>The deployment configuration for an endpoint, which contains the
desired deployment strategy and rollback configurations.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_update_endpoint_:_RetainDeploymentConfig">RetainDeploymentConfig</code></td>
<td><p>Specifies whether to reuse the last deployment configuration. The
default value is false (the configuration is not reused).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EndpointArn = "string"
    )

### Request syntax

    svc$update_endpoint(
      EndpointName = "string",
      EndpointConfigName = "string",
      RetainAllVariantProperties = TRUE|FALSE,
      ExcludeRetainedVariantProperties = list(
        list(
          VariantPropertyType = "DesiredInstanceCount"|"DesiredWeight"|"DataCaptureConfig"
        )
      ),
      DeploymentConfig = list(
        BlueGreenUpdatePolicy = list(
          TrafficRoutingConfiguration = list(
            Type = "ALL_AT_ONCE"|"CANARY"|"LINEAR",
            WaitIntervalInSeconds = 123,
            CanarySize = list(
              Type = "INSTANCE_COUNT"|"CAPACITY_PERCENT",
              Value = 123
            ),
            LinearStepSize = list(
              Type = "INSTANCE_COUNT"|"CAPACITY_PERCENT",
              Value = 123
            )
          ),
          TerminationWaitInSeconds = 123,
          MaximumExecutionTimeoutInSeconds = 123
        ),
        AutoRollbackConfiguration = list(
          Alarms = list(
            list(
              AlarmName = "string"
            )
          )
        )
      ),
      RetainDeploymentConfig = TRUE|FALSE
    )
