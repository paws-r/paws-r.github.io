<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_delete_vpc_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a MSK VPC connection

### Description

Deletes a MSK VPC connection.

### Usage

    kafka_delete_vpc_connection(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafka_delete_vpc_connection_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies an MSK VPC connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcConnectionArn = "string",
      State = "CREATING"|"AVAILABLE"|"INACTIVE"|"DEACTIVATING"|"DELETING"|"FAILED"|"REJECTED"|"REJECTING"
    )

### Request syntax

    svc$delete_vpc_connection(
      Arn = "string"
    )
