<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_template_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the item that the specified template alias points to

### Description

Deletes the item that the specified template alias points to. If you
provide a specific alias, you delete the version of the template that
the alias points to.

### Usage

    quicksight_delete_template_alias(AwsAccountId, TemplateId, AliasName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_template_alias_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the item to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_template_alias_:_TemplateId">TemplateId</code></td>
<td><p>[required] The ID for the template that the specified alias is
for.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_delete_template_alias_:_AliasName">AliasName</code></td>
<td><p>[required] The name for the template alias. To delete a specific
alias, you delete the version that the alias points to. You can specify
the alias name, or specify the latest version of the template by
providing the keyword <code style="white-space: pre;">⁠$LATEST⁠</code> in
the <code>AliasName</code> parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      TemplateId = "string",
      AliasName = "string",
      Arn = "string",
      RequestId = "string"
    )

### Request syntax

    svc$delete_template_alias(
      AwsAccountId = "string",
      TemplateId = "string",
      AliasName = "string"
    )
