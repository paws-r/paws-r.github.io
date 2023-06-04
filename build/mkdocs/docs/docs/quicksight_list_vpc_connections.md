<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_list_vpc_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the VPC connections in the current set Amazon Web Services Region of an Amazon Web Services account

### Description

Lists all of the VPC connections in the current set Amazon Web Services
Region of an Amazon Web Services account.

### Usage

    quicksight_list_vpc_connections(AwsAccountId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_list_vpc_connections_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the account that
contains the VPC connections that you want to list.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_list_vpc_connections_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results, or null if there are no
more results.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_list_vpc_connections_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to be returned per
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VPCConnectionSummaries = list(
        list(
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
        )
      ),
      NextToken = "string",
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$list_vpc_connections(
      AwsAccountId = "string",
      NextToken = "string",
      MaxResults = 123
    )
