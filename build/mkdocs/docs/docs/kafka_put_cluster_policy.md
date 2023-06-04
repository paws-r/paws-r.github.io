<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_put_cluster_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates or updates the MSK cluster policy specified by the cluster Amazon Resource Name (ARN) in the request

### Description

Creates or updates the MSK cluster policy specified by the cluster
Amazon Resource Name (ARN) in the request.

### Usage

    kafka_put_cluster_policy(ClusterArn, CurrentVersion, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_put_cluster_policy_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_put_cluster_policy_:_CurrentVersion">CurrentVersion</code></td>
<td><p>The policy version.</p></td>
</tr>
<tr class="odd">
<td><code id="kafka_put_cluster_policy_:_Policy">Policy</code></td>
<td><p>[required] The policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CurrentVersion = "string"
    )

### Request syntax

    svc$put_cluster_policy(
      ClusterArn = "string",
      CurrentVersion = "string",
      Policy = "string"
    )
