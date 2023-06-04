<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_create_email_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Verifies an email identity for use with Amazon Pinpoint

### Description

Verifies an email identity for use with Amazon Pinpoint. In Amazon
Pinpoint, an identity is an email address or domain that you use when
you send email. Before you can use an identity to send email with Amazon
Pinpoint, you first have to verify it. By verifying an address, you
demonstrate that you're the owner of the address, and that you've given
Amazon Pinpoint permission to send email from the address.

When you verify an email address, Amazon Pinpoint sends an email to the
address. Your email address is verified as soon as you follow the link
in the verification email.

When you verify a domain, this operation provides a set of DKIM tokens,
which you can convert into CNAME tokens. You add these CNAME tokens to
the DNS configuration for your domain. Your domain is verified when
Amazon Pinpoint detects these records in the DNS configuration for your
domain. It usually takes around 72 hours to complete the domain
verification process.

### Usage

    pinpointemail_create_email_identity(EmailIdentity, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_create_email_identity_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The email address or domain that you want to
verify.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_create_email_identity_:_Tags">Tags</code></td>
<td><p>An array of objects that define the tags (keys and values) that
you want to associate with the email identity.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IdentityType = "EMAIL_ADDRESS"|"DOMAIN"|"MANAGED_DOMAIN",
      VerifiedForSendingStatus = TRUE|FALSE,
      DkimAttributes = list(
        SigningEnabled = TRUE|FALSE,
        Status = "PENDING"|"SUCCESS"|"FAILED"|"TEMPORARY_FAILURE"|"NOT_STARTED",
        Tokens = list(
          "string"
        )
      )
    )

### Request syntax

    svc$create_email_identity(
      EmailIdentity = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
