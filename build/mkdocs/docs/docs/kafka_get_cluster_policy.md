<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_get_cluster_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get the MSK cluster policy specified by the Amazon Resource Name (ARN) in the request

### Description

Get the MSK cluster policy specified by the Amazon Resource Name (ARN)
in the request.

### Usage

    kafka_get_cluster_policy(ClusterArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_get_cluster_policy_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CurrentVersion = "string",
      Policy = "string"
    )

### Request syntax

    svc$get_cluster_policy(
      ClusterArn = "string"
    )
