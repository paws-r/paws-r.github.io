<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_get_mailbox_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests a user's mailbox details for a specified organization and user

### Description

Requests a user's mailbox details for a specified organization and user.

### Usage

    workmail_get_mailbox_details(OrganizationId, UserId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_get_mailbox_details_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization that contains the
user whose mailbox details are being requested.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_get_mailbox_details_:_UserId">UserId</code></td>
<td><p>[required] The identifier for the user whose mailbox details are
being requested.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MailboxQuota = 123,
      MailboxSize = 123.0
    )

### Request syntax

    svc$get_mailbox_details(
      OrganizationId = "string",
      UserId = "string"
    )
