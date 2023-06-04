<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a template

### Description

Deletes a template.

### Usage

    quicksight_delete_template(AwsAccountId, TemplateId, VersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_template_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the template that you're deleting.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_template_:_TemplateId">TemplateId</code></td>
<td><p>[required] An ID for the template you want to delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_delete_template_:_VersionNumber">VersionNumber</code></td>
<td><p>Specifies the version of the template that you want to delete. If
you don't provide a version number, <code>delete_template</code> deletes
all versions of the template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestId = "string",
      Arn = "string",
      TemplateId = "string",
      Status = 123
    )

### Request syntax

    svc$delete_template(
      AwsAccountId = "string",
      TemplateId = "string",
      VersionNumber = 123
    )
