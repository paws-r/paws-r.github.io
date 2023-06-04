<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emrcontainers_create_managed_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a managed endpoint

### Description

Creates a managed endpoint. A managed endpoint is a gateway that
connects Amazon EMR Studio to Amazon EMR on EKS so that Amazon EMR
Studio can communicate with your virtual cluster.

### Usage

    emrcontainers_create_managed_endpoint(name, virtualClusterId, type,
      releaseLabel, executionRoleArn, certificateArn, configurationOverrides,
      clientToken, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emrcontainers_create_managed_endpoint_:_name">name</code></td>
<td><p>[required] The name of the managed endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_create_managed_endpoint_:_virtualClusterId">virtualClusterId</code></td>
<td><p>[required] The ID of the virtual cluster for which a managed
endpoint is created.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_create_managed_endpoint_:_type">type</code></td>
<td><p>[required] The type of the managed endpoint.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_create_managed_endpoint_:_releaseLabel">releaseLabel</code></td>
<td><p>[required] The Amazon EMR release version.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_create_managed_endpoint_:_executionRoleArn">executionRoleArn</code></td>
<td><p>[required] The ARN of the execution role.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_create_managed_endpoint_:_certificateArn">certificateArn</code></td>
<td><p>The certificate ARN provided by users for the managed endpoint.
This field is under deprecation and will be removed in future
releases.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_create_managed_endpoint_:_configurationOverrides">configurationOverrides</code></td>
<td><p>The configuration settings that will be used to override existing
configurations.</p></td>
</tr>
<tr class="even">
<td><code
id="emrcontainers_create_managed_endpoint_:_clientToken">clientToken</code></td>
<td><p>[required] The client idempotency token for this create
call.</p></td>
</tr>
<tr class="odd">
<td><code
id="emrcontainers_create_managed_endpoint_:_tags">tags</code></td>
<td><p>The tags of the managed endpoint.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      id = "string",
      name = "string",
      arn = "string",
      virtualClusterId = "string"
    )

### Request syntax

    svc$create_managed_endpoint(
      name = "string",
      virtualClusterId = "string",
      type = "string",
      releaseLabel = "string",
      executionRoleArn = "string",
      certificateArn = "string",
      configurationOverrides = list(
        applicationConfiguration = list(
          list(
            classification = "string",
            properties = list(
              "string"
            ),
            configurations = list()
          )
        ),
        monitoringConfiguration = list(
          persistentAppUI = "ENABLED"|"DISABLED",
          cloudWatchMonitoringConfiguration = list(
            logGroupName = "string",
            logStreamNamePrefix = "string"
          ),
          s3MonitoringConfiguration = list(
            logUri = "string"
          )
        )
      ),
      clientToken = "string",
      tags = list(
        "string"
      )
    )
