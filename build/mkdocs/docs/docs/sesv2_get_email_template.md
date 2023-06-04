<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_get_email_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays the template object (which includes the subject line, HTML part and text part) for the template you specify

### Description

Displays the template object (which includes the subject line, HTML part
and text part) for the template you specify.

You can execute this operation no more than once per second.

### Usage

    sesv2_get_email_template(TemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_get_email_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TemplateName = "string",
      TemplateContent = list(
        Subject = "string",
        Text = "string",
        Html = "string"
      )
    )

### Request syntax

    svc$get_email_template(
      TemplateName = "string"
    )
