<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_create_template_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a template alias for a template

### Description

Creates a template alias for a template.

### Usage

    quicksight_create_template_alias(AwsAccountId, TemplateId, AliasName,
      TemplateVersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_create_template_alias_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the template that you creating an alias for.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_template_alias_:_TemplateId">TemplateId</code></td>
<td><p>[required] An ID for the template.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_create_template_alias_:_AliasName">AliasName</code></td>
<td><p>[required] The name that you want to give to the template alias
that you're creating. Don't start the alias name with the <code>$</code>
character. Alias names that start with <code>$</code> are reserved by
Amazon QuickSight.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_create_template_alias_:_TemplateVersionNumber">TemplateVersionNumber</code></td>
<td><p>[required] The version number of the template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TemplateAlias = list(
        AliasName = "string",
        Arn = "string",
        TemplateVersionNumber = 123
      ),
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$create_template_alias(
      AwsAccountId = "string",
      TemplateId = "string",
      AliasName = "string",
      TemplateVersionNumber = 123
    )
