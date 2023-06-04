<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_test_render_email_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a preview of the MIME content of an email when provided with a template and a set of replacement data

### Description

Creates a preview of the MIME content of an email when provided with a
template and a set of replacement data.

You can execute this operation no more than once per second.

### Usage

    sesv2_test_render_email_template(TemplateName, TemplateData)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_test_render_email_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the template.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_test_render_email_template_:_TemplateData">TemplateData</code></td>
<td><p>[required] A list of replacement values to apply to the template.
This parameter is a JSON object, typically consisting of key-value pairs
in which the keys correspond to replacement tags in the email
template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RenderedTemplate = "string"
    )

### Request syntax

    svc$test_render_email_template(
      TemplateName = "string",
      TemplateData = "string"
    )
