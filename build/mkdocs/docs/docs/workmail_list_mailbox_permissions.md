<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_mailbox_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the mailbox permissions associated with a user, group, or resource mailbox

### Description

Lists the mailbox permissions associated with a user, group, or resource
mailbox.

### Usage

    workmail_list_mailbox_permissions(OrganizationId, EntityId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_list_mailbox_permissions_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier of the organization under which the
user, group, or resource exists.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_list_mailbox_permissions_:_EntityId">EntityId</code></td>
<td><p>[required] The identifier of the user, group, or resource for
which to list mailbox permissions.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_list_mailbox_permissions_:_NextToken">NextToken</code></td>
<td><p>The token to use to retrieve the next page of results. The first
call does not contain any tokens.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_list_mailbox_permissions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in a single
call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Permissions = list(
        list(
          GranteeId = "string",
          GranteeType = "GROUP"|"USER",
          PermissionValues = list(
            "FULL_ACCESS"|"SEND_AS"|"SEND_ON_BEHALF"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_mailbox_permissions(
      OrganizationId = "string",
      EntityId = "string",
      NextToken = "string",
      MaxResults = 123
    )
