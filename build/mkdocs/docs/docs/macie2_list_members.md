<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_list_members</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the accounts that are associated with an Amazon Macie administrator account

### Description

Retrieves information about the accounts that are associated with an
Amazon Macie administrator account.

### Usage

    macie2_list_members(maxResults, nextToken, onlyAssociated)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="macie2_list_members_:_maxResults">maxResults</code></td>
<td><p>The maximum number of items to include in each page of a
paginated response.</p></td>
</tr>
<tr class="even">
<td><code id="macie2_list_members_:_nextToken">nextToken</code></td>
<td><p>The nextToken string that specifies which page of results to
return in a paginated response.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_list_members_:_onlyAssociated">onlyAssociated</code></td>
<td><p>Specifies which accounts to include in the response, based on the
status of an account's relationship with the administrator account. By
default, the response includes only current member accounts. To include
all accounts, set this value to false.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      members = list(
        list(
          accountId = "string",
          administratorAccountId = "string",
          arn = "string",
          email = "string",
          invitedAt = as.POSIXct(
            "2015-01-01"
          ),
          masterAccountId = "string",
          relationshipStatus = "Enabled"|"Paused"|"Invited"|"Created"|"Removed"|"Resigned"|"EmailVerificationInProgress"|"EmailVerificationFailed"|"RegionDisabled"|"AccountSuspended",
          tags = list(
            "string"
          ),
          updatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_members(
      maxResults = 123,
      nextToken = "string",
      onlyAssociated = "string"
    )
