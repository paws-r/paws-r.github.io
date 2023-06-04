<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_get_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the membership details for specified member accounts for a behavior graph

### Description

Returns the membership details for specified member accounts for a
behavior graph.

### Usage

    detective_get_members(GraphArn, AccountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="detective_get_members_:_GraphArn">GraphArn</code></td>
<td><p>[required] The ARN of the behavior graph for which to request the
member details.</p></td>
</tr>
<tr class="even">
<td><code id="detective_get_members_:_AccountIds">AccountIds</code></td>
<td><p>[required] The list of Amazon Web Services account identifiers
for the member account for which to return member details. You can
request details for up to 50 member accounts at a time.</p>
<p>You cannot use <code>get_members</code> to retrieve information about
member accounts that were removed from the behavior graph.</p></td>
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
      UnprocessedAccounts = list(
        list(
          AccountId = "string",
          Reason = "string"
        )
      )
    )

### Request syntax

    svc$get_members(
      GraphArn = "string",
      AccountIds = list(
        "string"
      )
    )
