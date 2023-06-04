<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_delete_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an email template

### Description

Deletes an email template.

You can execute this operation no more than once per second.

### Usage

    ses_delete_template(TemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_delete_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the template to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_template(
      TemplateName = "string"
    )
