<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_get_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays the template object (which includes the Subject line, HTML part and text part) for the template you specify

### Description

Displays the template object (which includes the Subject line, HTML part
and text part) for the template you specify.

You can execute this operation no more than once per second.

### Usage

    ses_get_template(TemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ses_get_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the template you want to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Template = list(
        TemplateName = "string",
        SubjectPart = "string",
        TextPart = "string",
        HtmlPart = "string"
      )
    )

### Request syntax

    svc$get_template(
      TemplateName = "string"
    )
