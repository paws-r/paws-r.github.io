<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_send_custom_verification_email</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an email address to the list of identities for your Amazon SES account in the current AWS Region and attempts to verify it

### Description

Adds an email address to the list of identities for your Amazon SES
account in the current AWS Region and attempts to verify it. As a result
of executing this operation, a customized verification email is sent to
the specified address.

To use this operation, you must first create a custom verification email
template. For more information about creating and using custom
verification email templates, see [Using Custom Verification Email
Templates](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html) in
the *Amazon SES Developer Guide*.

You can execute this operation no more than once per second.

### Usage

    ses_send_custom_verification_email(EmailAddress, TemplateName,
      ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_send_custom_verification_email_:_EmailAddress">EmailAddress</code></td>
<td><p>[required] The email address to verify.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_send_custom_verification_email_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the custom verification email template to
use when sending the verification email.</p></td>
</tr>
<tr class="odd">
<td><code
id="ses_send_custom_verification_email_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>Name of a configuration set to use when sending the verification
email.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MessageId = "string"
    )

### Request syntax

    svc$send_custom_verification_email(
      EmailAddress = "string",
      TemplateName = "string",
      ConfigurationSetName = "string"
    )
