<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_update_template</td>
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

    ses_update_template(Template)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ses_update_template_:_Template">Template</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_template(
      Template = list(
        TemplateName = "string",
        SubjectPart = "string",
        TextPart = "string",
        HtmlPart = "string"
      )
    )
