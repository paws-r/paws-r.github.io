<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_create_vpc_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new MSK VPC connection

### Description

Creates a new MSK VPC connection.

### Usage

    kafka_create_vpc_connection(TargetClusterArn, Authentication, VpcId,
      ClientSubnets, SecurityGroups, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafka_create_vpc_connection_:_TargetClusterArn">TargetClusterArn</code></td>
<td><p>[required] The cluster Amazon Resource Name (ARN) for the VPC
connection.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_create_vpc_connection_:_Authentication">Authentication</code></td>
<td><p>[required] The authentication type of VPC connection.</p></td>
</tr>
<tr class="odd">
<td><code id="kafka_create_vpc_connection_:_VpcId">VpcId</code></td>
<td><p>[required] The VPC ID of VPC connection.</p></td>
</tr>
<tr class="even">
<td><code
id="kafka_create_vpc_connection_:_ClientSubnets">ClientSubnets</code></td>
<td><p>[required] The list of client subnets.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafka_create_vpc_connection_:_SecurityGroups">SecurityGroups</code></td>
<td><p>[required] The list of security groups.</p></td>
</tr>
<tr class="even">
<td><code id="kafka_create_vpc_connection_:_Tags">Tags</code></td>
<td><p>A map of tags for the VPC connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VpcConnectionArn = "string",
      State = "CREATING"|"AVAILABLE"|"INACTIVE"|"DEACTIVATING"|"DELETING"|"FAILED"|"REJECTED"|"REJECTING",
      Authentication = "string",
      VpcId = "string",
      ClientSubnets = list(
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

    svc$create_vpc_connection(
      TargetClusterArn = "string",
      Authentication = "string",
      VpcId = "string",
      ClientSubnets = list(
        "string"
      ),
      SecurityGroups = list(
        "string"
      ),
      Tags = list(
        "string"
      )
    )
