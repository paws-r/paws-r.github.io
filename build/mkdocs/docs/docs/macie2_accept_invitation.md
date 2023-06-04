<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_accept_invitation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts an Amazon Macie membership invitation that was received from a specific account

### Description

Accepts an Amazon Macie membership invitation that was received from a
specific account.

### Usage

    macie2_accept_invitation(administratorAccountId, invitationId,
      masterAccount)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_accept_invitation_:_administratorAccountId">administratorAccountId</code></td>
<td><p>The Amazon Web Services account ID for the account that sent the
invitation.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_accept_invitation_:_invitationId">invitationId</code></td>
<td><p>[required] The unique identifier for the invitation to
accept.</p></td>
</tr>
<tr class="odd">
<td><code
id="macie2_accept_invitation_:_masterAccount">masterAccount</code></td>
<td><p>(Deprecated) The Amazon Web Services account ID for the account
that sent the invitation. This property has been replaced by the
administratorAccountId property and is retained only for backward
compatibility.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$accept_invitation(
      administratorAccountId = "string",
      invitationId = "string",
      masterAccount = "string"
    )
