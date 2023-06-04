<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_vpc_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a VPC connection

### Description

Describes a VPC connection.

### Usage

    quicksight_describe_vpc_connection(AwsAccountId, VPCConnectionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_vpc_connection_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the account that
contains the VPC connection that you want described.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_vpc_connection_:_VPCConnectionId">VPCConnectionId</code></td>
<td><p>[required] The ID of the VPC connection that you're creating.
This ID is a unique identifier for each Amazon Web Services Region in an
Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VPCConnection = list(
        VPCConnectionId = "string",
        Arn = "string",
        Name = "string",
        VPCId = "string",
        SecurityGroupIds = list(
          "string"
        ),
        DnsResolvers = list(
          "string"
        ),
        Status = "CREATION_IN_PROGRESS"|"CREATION_SUCCESSFUL"|"CREATION_FAILED"|"UPDATE_IN_PROGRESS"|"UPDATE_SUCCESSFUL"|"UPDATE_FAILED"|"DELETION_IN_PROGRESS"|"DELETION_FAILED"|"DELETED",
        AvailabilityStatus = "AVAILABLE"|"UNAVAILABLE"|"PARTIALLY_AVAILABLE",
        NetworkInterfaces = list(
          list(
            SubnetId = "string",
            AvailabilityZone = "string",
            ErrorMessage = "string",
            Status = "CREATING"|"AVAILABLE"|"CREATION_FAILED"|"UPDATING"|"UPDATE_FAILED"|"DELETING"|"DELETED"|"DELETION_FAILED"|"DELETION_SCHEDULED"|"ATTACHMENT_FAILED_ROLLBACK_FAILED",
            NetworkInterfaceId = "string"
          )
        ),
        RoleArn = "string",
        CreatedTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$describe_vpc_connection(
      AwsAccountId = "string",
      VPCConnectionId = "string"
    )
