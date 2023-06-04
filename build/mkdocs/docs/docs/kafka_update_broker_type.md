<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_update_broker_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates EC2 instance type

### Description

Updates EC2 instance type.

### Usage

    kafka_update_broker_type(ClusterArn, CurrentVersion, TargetInstanceType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_update_broker_type_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_update_broker_type_:_CurrentVersion">CurrentVersion</code></td>
<td><p>[required] The cluster version that you want to change. After
this operation completes successfully, the cluster will have a new
version.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_update_broker_type_:_TargetInstanceType">TargetInstanceType</code></td>
<td><p>[required] The Amazon MSK broker type that you want all of the
brokers in this cluster to be.</p></td>
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

    svc$update_broker_type(
      ClusterArn = "string",
      CurrentVersion = "string",
      TargetInstanceType = "string"
    )
