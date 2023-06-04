<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_vpc_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a VPC connection

### Description

Updates a VPC connection.

### Usage

    quicksight_update_vpc_connection(AwsAccountId, VPCConnectionId, Name,
      SubnetIds, SecurityGroupIds, DnsResolvers, RoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_vpc_connection_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the account that
contains the VPC connection that you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_vpc_connection_:_VPCConnectionId">VPCConnectionId</code></td>
<td><p>[required] The ID of the VPC connection that you're updating.
This ID is a unique identifier for each Amazon Web Services Region in an
Amazon Web Services account.</p></td>
</tr>
<tr class="odd">
<td><code id="quicksight_update_vpc_connection_:_Name">Name</code></td>
<td><p>[required] The display name for the VPC connection.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_vpc_connection_:_SubnetIds">SubnetIds</code></td>
<td><p>[required] A list of subnet IDs for the VPC connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_vpc_connection_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>[required] A list of security group IDs for the VPC
connection.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_vpc_connection_:_DnsResolvers">DnsResolvers</code></td>
<td><p>A list of IP addresses of DNS resolver endpoints for the VPC
connection.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_vpc_connection_:_RoleArn">RoleArn</code></td>
<td><p>[required] An IAM role associated with the VPC
connection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string",
      VPCConnectionId = "string",
      UpdateStatus = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETION_IN_PROGRESS"|"DELETION_FAILED"|"DELETED",
      AvailabilityStatus = "AVAILABLE"|"UNAVAILABLE"|"PARTIALLY_AVAILABLE",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$update_vpc_connection(
      AwsAccountId = "string",
      VPCConnectionId = "string",
      Name = "string",
      SubnetIds = list(
        "string"
      ),
      SecurityGroupIds = list(
        "string"
      ),
      DnsResolvers = list(
        "string"
      ),
      RoleArn = "string"
    )
