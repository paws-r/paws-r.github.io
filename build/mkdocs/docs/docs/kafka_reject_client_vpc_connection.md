<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_reject_client_vpc_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns empty response

### Description

Returns empty response.

### Usage

    kafka_reject_client_vpc_connection(ClusterArn, VpcConnectionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_reject_client_vpc_connection_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_reject_client_vpc_connection_:_VpcConnectionArn">VpcConnectionArn</code></td>
<td><p>[required] The VPC connection ARN.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$reject_client_vpc_connection(
      ClusterArn = "string",
      VpcConnectionArn = "string"
    )
