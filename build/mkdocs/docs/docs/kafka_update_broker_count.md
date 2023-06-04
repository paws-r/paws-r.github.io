<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_update_broker_count</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the number of broker nodes in the cluster

### Description

Updates the number of broker nodes in the cluster.

### Usage

    kafka_update_broker_count(ClusterArn, CurrentVersion,
      TargetNumberOfBrokerNodes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_update_broker_count_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_broker_count_:_CurrentVersion">CurrentVersion</code></td>
<td><p>[required] The version of cluster to update from. A successful
operation will then generate a new version.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_update_broker_count_:_TargetNumberOfBrokerNodes">TargetNumberOfBrokerNodes</code></td>
<td><p>[required] The number of broker nodes that you want the cluster
to have after this operation completes successfully.</p></td>
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

    svc$update_broker_count(
      ClusterArn = "string",
      CurrentVersion = "string",
      TargetNumberOfBrokerNodes = 123
    )
