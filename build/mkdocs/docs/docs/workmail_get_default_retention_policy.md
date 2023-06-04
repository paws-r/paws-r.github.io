<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_get_default_retention_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the default retention policy details for the specified organization

### Description

Gets the default retention policy details for the specified
organization.

### Usage

    workmail_get_default_retention_policy(OrganizationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_get_default_retention_policy_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

### Request syntax

    svc$get_default_retention_policy(
      OrganizationId = "string"
    )
