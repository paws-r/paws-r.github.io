<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_get_custom_verification_email_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the custom email verification template for the template name you specify

### Description

Returns the custom email verification template for the template name you
specify.

For more information about custom verification email templates, see
[Using Custom Verification Email
Templates](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html) in
the *Amazon SES Developer Guide*.

You can execute this operation no more than once per second.

### Usage

    ses_get_custom_verification_email_template(TemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_get_custom_verification_email_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the custom verification email template
that you want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TemplateName = "string",
      FromEmailAddress = "string",
      TemplateSubject = "string",
      TemplateContent = "string",
      SuccessRedirectionURL = "string",
      FailureRedirectionURL = "string"
    )

### Request syntax

    svc$get_custom_verification_email_template(
      TemplateName = "string"
    )
