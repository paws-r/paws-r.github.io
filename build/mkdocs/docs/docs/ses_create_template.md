<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_create_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an email template

### Description

Creates an email template. Email templates enable you to send
personalized email to one or more destinations in a single API
operation. For more information, see the [Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/send-personalized-email-api.html).

You can execute this operation no more than once per second.

### Usage

    ses_create_template(Template)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ses_create_template_:_Template">Template</code></td>
<td><p>[required] The content of the email, composed of a subject line,
an HTML part, and a text-only part.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_template(
      Template = list(
        TemplateName = "string",
        SubjectPart = "string",
        TextPart = "string",
        HtmlPart = "string"
      )
    )
