<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_decline_invitations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Declines Amazon Macie membership invitations that were received from specific accounts

### Description

Declines Amazon Macie membership invitations that were received from
specific accounts.

### Usage

    macie2_decline_invitations(accountIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_decline_invitations_:_accountIds">accountIds</code></td>
<td><p>[required] An array that lists Amazon Web Services account IDs,
one for each account that sent an invitation to decline.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      unprocessedAccounts = list(
        list(
          accountId = "string",
          errorCode = "ClientError"|"InternalError",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$decline_invitations(
      accountIds = list(
        "string"
      )
    )
