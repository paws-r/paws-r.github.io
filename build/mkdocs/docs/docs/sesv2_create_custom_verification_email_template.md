<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_create_custom_verification_email_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new custom verification email template

### Description

Creates a new custom verification email template.

For more information about custom verification email templates, see
[Using custom verification email
templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
in the *Amazon SES Developer Guide*.

You can execute this operation no more than once per second.

### Usage

    sesv2_create_custom_verification_email_template(TemplateName,
      FromEmailAddress, TemplateSubject, TemplateContent,
      SuccessRedirectionURL, FailureRedirectionURL)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_create_custom_verification_email_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the custom verification email
template.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_create_custom_verification_email_template_:_FromEmailAddress">FromEmailAddress</code></td>
<td><p>[required] The email address that the custom verification email
is sent from.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_create_custom_verification_email_template_:_TemplateSubject">TemplateSubject</code></td>
<td><p>[required] The subject line of the custom verification
email.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_create_custom_verification_email_template_:_TemplateContent">TemplateContent</code></td>
<td><p>[required] The content of the custom verification email. The
total size of the email must be less than 10 MB. The message body may
contain HTML, with some limitations. For more information, see <a
href="https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom-faq">Custom
verification email frequently asked questions</a> in the <em>Amazon SES
Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_create_custom_verification_email_template_:_SuccessRedirectionURL">SuccessRedirectionURL</code></td>
<td><p>[required] The URL that the recipient of the verification email
is sent to if his or her address is successfully verified.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_create_custom_verification_email_template_:_FailureRedirectionURL">FailureRedirectionURL</code></td>
<td><p>[required] The URL that the recipient of the verification email
is sent to if his or her address is not successfully verified.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_custom_verification_email_template(
      TemplateName = "string",
      FromEmailAddress = "string",
      TemplateSubject = "string",
      TemplateContent = "string",
      SuccessRedirectionURL = "string",
      FailureRedirectionURL = "string"
    )
