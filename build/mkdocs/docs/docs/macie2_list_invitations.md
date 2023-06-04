<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_list_invitations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the Amazon Macie membership invitations that were received by an account

### Description

Retrieves information about the Amazon Macie membership invitations that
were received by an account.

### Usage

    macie2_list_invitations(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_list_invitations_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response.</p></td>
</tr>
<tr class="even">
<td><code id="macie2_list_invitations_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      invitations = list(
        list(
          accountId = "string",
          invitationId = "string",
          invitedAt = as.POSIXct(
            "2015-01-01"
          ),
          relationshipStatus = "Enabled"|"Paused"|"Invited"|"Created"|"Removed"|"Resigned"|"EmailVerificationInProgress"|"EmailVerificationFailed"|"RegionDisabled"|"AccountSuspended"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_invitations(
      maxResults = 123,
      nextToken = "string"
    )
