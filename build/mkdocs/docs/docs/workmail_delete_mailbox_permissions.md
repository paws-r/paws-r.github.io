<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_mailbox_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes permissions granted to a member (user or group)

### Description

Deletes permissions granted to a member (user or group).

### Usage

    workmail_delete_mailbox_permissions(OrganizationId, EntityId, GranteeId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_delete_mailbox_permissions_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier of the organization under which the
member (user or group) exists.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_delete_mailbox_permissions_:_EntityId">EntityId</code></td>
<td><p>[required] The identifier of the member (user or group) that owns
the mailbox.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_delete_mailbox_permissions_:_GranteeId">GranteeId</code></td>
<td><p>[required] The identifier of the member (user or group) for which
to delete granted permissions.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_mailbox_permissions(
      OrganizationId = "string",
      EntityId = "string",
      GranteeId = "string"
    )
