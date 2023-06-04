<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_list_invitations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the list of open and accepted behavior graph invitations for the member account

### Description

Retrieves the list of open and accepted behavior graph invitations for
the member account. This operation can only be called by an invited
member account.

Open invitations are invitations that the member account has not
responded to.

The results do not include behavior graphs for which the member account
declined the invitation. The results also do not include behavior graphs
that the member account resigned from or was removed from.

### Usage

    detective_list_invitations(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_list_invitations_:_NextToken">NextToken</code></td>
<td><p>For requests to retrieve the next page of results, the pagination
token that was returned with the previous page of results. The initial
request does not include a pagination token.</p></td>
</tr>
<tr class="even">
<td><code
id="detective_list_invitations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of behavior graph invitations to return in the
response. The total must be less than the overall limit on the number of
results to return, which is currently 200.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Invitations = list(
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

    svc$list_invitations(
      NextToken = "string",
      MaxResults = 123
    )
