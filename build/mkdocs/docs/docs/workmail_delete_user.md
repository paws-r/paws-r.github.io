<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a user from WorkMail and all subsequent systems

### Description

Deletes a user from WorkMail and all subsequent systems. Before you can
delete a user, the user state must be `DISABLED`. Use the
`describe_user` action to confirm the user state.

Deleting a user is permanent and cannot be undone. WorkMail archives
user mailboxes for 30 days before they are permanently removed.

### Usage

    workmail_delete_user(OrganizationId, UserId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_delete_user_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization that contains the user to be
deleted.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_delete_user_:_UserId">UserId</code></td>
<td><p>[required] The identifier of the user to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user(
      OrganizationId = "string",
      UserId = "string"
    )
