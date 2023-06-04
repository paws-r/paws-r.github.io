<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_template_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the template alias for a template

### Description

Describes the template alias for a template.

### Usage

    quicksight_describe_template_alias(AwsAccountId, TemplateId, AliasName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_template_alias_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the template alias that you're describing.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_template_alias_:_TemplateId">TemplateId</code></td>
<td><p>[required] The ID for the template.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_describe_template_alias_:_AliasName">AliasName</code></td>
<td><p>[required] The name of the template alias that you want to
describe. If you name a specific alias, you describe the version that
the alias points to. You can specify the latest version of the template
by providing the keyword <code style="white-space: pre;">⁠$LATEST⁠</code>
in the <code>AliasName</code> parameter. The keyword <code
style="white-space: pre;">⁠$PUBLISHED⁠</code> doesn't apply to
templates.</p></td>
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

    svc$describe_template_alias(
      AwsAccountId = "string",
      TemplateId = "string",
      AliasName = "string"
    )
