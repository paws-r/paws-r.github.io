<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_describe_template_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes read and write permissions on a template

### Description

Describes read and write permissions on a template.

### Usage

    quicksight_describe_template_permissions(AwsAccountId, TemplateId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_describe_template_permissions_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the template that you're describing.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_describe_template_permissions_:_TemplateId">TemplateId</code></td>
<td><p>[required] The ID for the template.</p></td>
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

    svc$describe_template_permissions(
      AwsAccountId = "string",
      TemplateId = "string"
    )
