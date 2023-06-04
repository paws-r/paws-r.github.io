<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_put_retention_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Puts a retention policy to the specified organization

### Description

Puts a retention policy to the specified organization.

### Usage

    workmail_put_retention_policy(OrganizationId, Id, Name, Description,
      FolderConfigurations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_put_retention_policy_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization ID.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_put_retention_policy_:_Id">Id</code></td>
<td><p>The retention policy ID.</p></td>
</tr>
<tr class="odd">
<td><code id="workmail_put_retention_policy_:_Name">Name</code></td>
<td><p>[required] The retention policy name.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_put_retention_policy_:_Description">Description</code></td>
<td><p>The retention policy description.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_put_retention_policy_:_FolderConfigurations">FolderConfigurations</code></td>
<td><p>[required] The retention policy folder configurations.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_retention_policy(
      OrganizationId = "string",
      Id = "string",
      Name = "string",
      Description = "string",
      FolderConfigurations = list(
        list(
          Name = "INBOX"|"DELETED_ITEMS"|"SENT_ITEMS"|"DRAFTS"|"JUNK_EMAIL",
          Action = "NONE"|"DELETE"|"PERMANENTLY_DELETE",
          Period = 123
        )
      )
    )
