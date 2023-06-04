<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_update_mailbox_quota</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a user's current mailbox quota for a specified organization and user

### Description

Updates a user's current mailbox quota for a specified organization and
user.

### Usage

    workmail_update_mailbox_quota(OrganizationId, UserId, MailboxQuota)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_update_mailbox_quota_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization that contains the
user for whom to update the mailbox quota.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_update_mailbox_quota_:_UserId">UserId</code></td>
<td><p>[required] The identifer for the user for whom to update the
mailbox quota.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_update_mailbox_quota_:_MailboxQuota">MailboxQuota</code></td>
<td><p>[required] The updated mailbox quota, in MB, for the specified
user.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_mailbox_quota(
      OrganizationId = "string",
      UserId = "string",
      MailboxQuota = 123
    )
