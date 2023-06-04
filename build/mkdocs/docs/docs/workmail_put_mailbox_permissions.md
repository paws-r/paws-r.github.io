<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_put_mailbox_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets permissions for a user, group, or resource

### Description

Sets permissions for a user, group, or resource. This replaces any
pre-existing permissions.

### Usage

    workmail_put_mailbox_permissions(OrganizationId, EntityId, GranteeId,
      PermissionValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_put_mailbox_permissions_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier of the organization under which the
user, group, or resource exists.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_mailbox_permissions_:_EntityId">EntityId</code></td>
<td><p>[required] The identifier of the user, group, or resource for
which to update mailbox permissions.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_put_mailbox_permissions_:_GranteeId">GranteeId</code></td>
<td><p>[required] The identifier of the user, group, or resource to
which to grant the permissions.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_mailbox_permissions_:_PermissionValues">PermissionValues</code></td>
<td><p>[required] The permissions granted to the grantee. SEND_AS allows
the grantee to send email as the owner of the mailbox (the grantee is
not mentioned on these emails). SEND_ON_BEHALF allows the grantee to
send email on behalf of the owner of the mailbox (the grantee is not
mentioned as the physical sender of these emails). FULL_ACCESS allows
the grantee full access to the mailbox, irrespective of other
folder-level permissions set on the mailbox.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_mailbox_permissions(
      OrganizationId = "string",
      EntityId = "string",
      GranteeId = "string",
      PermissionValues = list(
        "FULL_ACCESS"|"SEND_AS"|"SEND_ON_BEHALF"
      )
    )
