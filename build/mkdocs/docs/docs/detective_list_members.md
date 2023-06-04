<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_list_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the list of member accounts for a behavior graph

### Description

Retrieves the list of member accounts for a behavior graph.

For invited accounts, the results do not include member accounts that
were removed from the behavior graph.

For the organization behavior graph, the results do not include
organization accounts that the Detective administrator account has not
enabled as member accounts.

### Usage

    detective_list_members(GraphArn, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="detective_list_members_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the behavior graph for which to retrieve
the list of member accounts.</p></td>
</tr>
<tr class="even">
<td><code id="detective_list_members_:_NextToken">NextToken</code></td>
<td><p>For requests to retrieve the next page of member account results,
the pagination token that was returned with the previous page of
results. The initial request does not include a pagination
token.</p></td>
</tr>
<tr class="odd">
<td><code
id="detective_list_members_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of member accounts to include in the response.
The total must be less than the overall limit on the number of results
to return, which is currently 200.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MemberDetails = list(
        list(
          AccountId = "string",
          EmailAddress = "string",
          GraphArn = "string",
          MasterId = "string",
          AdministratorId = "string",
          Status = "INVITED"|"VERIFICATION_IN_PROGRESS"|"VERIFICATION_FAILED"|"ENABLED"|"ACCEPTED_BUT_DISABLED",
          DisabledReason = "VOLUME_TOO_HIGH"|"VOLUME_UNKNOWN",
          InvitedTime = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          VolumeUsageInBytes = 123,
          VolumeUsageUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          PercentOfGraphUtilization = 123.0,
          PercentOfGraphUtilizationUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          InvitationType = "INVITATION"|"ORGANIZATION",
          VolumeUsageByDatasourcePackage = list(
            list(
              VolumeUsageInBytes = 123,
              VolumeUsageUpdateTime = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          DatasourcePackageIngestStates = list(
            "STARTED"|"STOPPED"|"DISABLED"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_members(
      GraphArn = "string",
      NextToken = "string",
      MaxResults = 123
    )
