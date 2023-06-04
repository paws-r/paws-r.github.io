<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_delete_custom_verification_email_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing custom verification email template

### Description

Deletes an existing custom verification email template.

For more information about custom verification email templates, see
[Using custom verification email
templates](https://docs.aws.amazon.com/ses/latest/dg/creating-identities.html#send-email-verify-address-custom)
in the *Amazon SES Developer Guide*.

You can execute this operation no more than once per second.

### Usage

    sesv2_delete_custom_verification_email_template(TemplateName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_delete_custom_verification_email_template_:_TemplateName">TemplateName</code></td>
<td><p>[required] The name of the custom verification email template
that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_custom_verification_email_template(
      TemplateName = "string"
    )
