<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_update_cluster_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the cluster with the configuration that is specified in the request body

### Description

Updates the cluster with the configuration that is specified in the
request body.

### Usage

    kafka_update_cluster_configuration(ClusterArn, ConfigurationInfo,
      CurrentVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_update_cluster_configuration_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_cluster_configuration_:_ConfigurationInfo">ConfigurationInfo</code></td>
<td><p>[required] Represents the configuration that you want MSK to use
for the brokers in a cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_update_cluster_configuration_:_CurrentVersion">CurrentVersion</code></td>
<td><p>[required] The version of the cluster that needs to be
updated.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterArn = "string",
      ClusterOperationArn = "string"
    )

### Request syntax

    svc$update_cluster_configuration(
      ClusterArn = "string",
      ConfigurationInfo = list(
        Arn = "string",
        Revision = 123
      ),
      CurrentVersion = "string"
    )
