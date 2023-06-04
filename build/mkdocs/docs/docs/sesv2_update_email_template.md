<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_update_email_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an email template

### Description

Updates an email template. Email templates enable you to send
personalized email to one or more destinations in a single API
operation. For more information, see the [Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html).

You can execute this operation no more than once per second.

### Usage

    sesv2_update_email_template(TemplateName, TemplateContent)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_update_email_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the template.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_update_email_template_:_TemplateContent">TemplateContent</code></td>
<td><p>[required] The content of the email template, composed of a
subject line, an HTML part, and a text-only part.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_email_template(
      TemplateName = "string",
      TemplateContent = list(
        Subject = "string",
        Text = "string",
        Html = "string"
      )
    )
