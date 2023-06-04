<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_delete_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in the request

### Description

Deletes the MSK cluster specified by the Amazon Resource Name (ARN) in
the request.

### Usage

    kafka_delete_cluster(ClusterArn, CurrentVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafka_delete_cluster_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_delete_cluster_:_CurrentVersion">CurrentVersion</code></td>
<td><p>The current version of the MSK cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ClusterArn = "string",
      State = "ACTIVE"|"CREATING"|"DELETING"|"FAILED"|"HEALING"|"MAINTENANCE"|"REBOOTING_BROKER"|"UPDATING"
    )

### Request syntax

    svc$delete_cluster(
      ClusterArn = "string",
      CurrentVersion = "string"
    )
