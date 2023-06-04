<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_describe_vpc_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of this MSK VPC connection

### Description

Returns a description of this MSK VPC connection.

### Usage

    kafka_describe_vpc_connection(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafka_describe_vpc_connection_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies a MSK VPC connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcConnectionArn = "string",
      TargetClusterArn = "string",
      State = "CREATING"|"AVAILABLE"|"INACTIVE"|"DEACTIVATING"|"DELETING"|"FAILED"|"REJECTED"|"REJECTING",
      Authentication = "string",
      VpcId = "string",
      Subnets = list(
        "string"
      ),
      SecurityGroups = list(
        "string"
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$describe_vpc_connection(
      Arn = "string"
    )
