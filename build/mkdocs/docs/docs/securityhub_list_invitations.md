<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_list_invitations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all Security Hub membership invitations that were sent to the current Amazon Web Services account

### Description

Lists all Security Hub membership invitations that were sent to the
current Amazon Web Services account.

This operation is only used by accounts that are managed by invitation.
Accounts that are managed using the integration with Organizations do
not receive invitations.

### Usage

    securityhub_list_invitations(MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_list_invitations_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return in the response.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_list_invitations_:_NextToken">NextToken</code></td>
<td><p>The token that is required for pagination. On your first call to
the <code>list_invitations</code> operation, set the value of this
parameter to <code>NULL</code>.</p>
<p>For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Invitations = list(
        list(
          AccountId = "string",
          InvitationId = "string",
          InvitedAt = as.POSIXct(
            "2015-01-01"
          ),
          MemberStatus = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_invitations(
      MaxResults = 123,
      NextToken = "string"
    )

### Examples

    ## Not run: 
    # The following example returns a list of Security Hub member invitations
    # sent to the calling AWS account. Only accounts that are invited manually
    # use this operation. It's not for use by accounts that are managed
    # through AWS Organizations.
    svc$list_invitations()

    ## End(Not run)
