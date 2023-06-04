<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_template_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the resource permissions for a template

### Description

Updates the resource permissions for a template.

### Usage

    quicksight_update_template_permissions(AwsAccountId, TemplateId,
      GrantPermissions, RevokePermissions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_template_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the template.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_template_permissions_:_TemplateId">TemplateId</code></td>
<td><p>[required] The ID for the template.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_template_permissions_:_GrantPermissions">GrantPermissions</code></td>
<td><p>A list of resource permissions to be granted on the
template.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_template_permissions_:_RevokePermissions">RevokePermissions</code></td>
<td><p>A list of resource permissions to be revoked from the
template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TemplateId = "string",
      TemplateArn = "string",
      Permissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$update_template_permissions(
      AwsAccountId = "string",
      TemplateId = "string",
      GrantPermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      ),
      RevokePermissions = list(
        list(
          Principal = "string",
          Actions = list(
            "string"
          )
        )
      )
    )
