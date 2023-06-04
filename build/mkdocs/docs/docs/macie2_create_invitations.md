<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>macie2_create_invitations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends an Amazon Macie membership invitation to one or more accounts

### Description

Sends an Amazon Macie membership invitation to one or more accounts.

### Usage

    macie2_create_invitations(accountIds, disableEmailNotification, message)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="macie2_create_invitations_:_accountIds">accountIds</code></td>
<td><p>[required] An array that lists Amazon Web Services account IDs,
one for each account to send the invitation to.</p></td>
</tr>
<tr class="even">
<td><code
id="macie2_create_invitations_:_disableEmailNotification">disableEmailNotification</code></td>
<td><p>Specifies whether to send the invitation as an email message. If
this value is false, Amazon Macie sends the invitation (as an email
message) to the email address that you specified for the recipient's
account when you associated the account with your account. The default
value is false.</p></td>
</tr>
<tr class="odd">
<td><code id="macie2_create_invitations_:_message">message</code></td>
<td><p>Custom text to include in the email message that contains the
invitation. The text can contain as many as 80 alphanumeric
characters.</p></td>
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

    svc$create_invitations(
      accountIds = list(
        "string"
      ),
      disableEmailNotification = TRUE|FALSE,
      message = "string"
    )
