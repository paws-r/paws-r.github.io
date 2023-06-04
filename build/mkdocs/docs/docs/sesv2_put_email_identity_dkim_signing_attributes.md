<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_put_email_identity_dkim_signing_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used to configure or change the DKIM authentication settings for an email domain identity

### Description

Used to configure or change the DKIM authentication settings for an
email domain identity. You can use this operation to do any of the
following:

-   Update the signing attributes for an identity that uses Bring Your
    Own DKIM (BYODKIM).

-   Update the key length that should be used for Easy DKIM.

-   Change from using no DKIM authentication to using Easy DKIM.

-   Change from using no DKIM authentication to using BYODKIM.

-   Change from using Easy DKIM to using BYODKIM.

-   Change from using BYODKIM to using Easy DKIM.

### Usage

    sesv2_put_email_identity_dkim_signing_attributes(EmailIdentity,
      SigningAttributesOrigin, SigningAttributes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_put_email_identity_dkim_signing_attributes_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The email identity.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_put_email_identity_dkim_signing_attributes_:_SigningAttributesOrigin">SigningAttributesOrigin</code></td>
<td><p>[required] The method to use to configure DKIM for the identity.
There are the following possible values:</p>
<ul>
<li><p><code>AWS_SES</code> – Configure DKIM for the identity by using
<a
href="https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html">Easy
DKIM</a>.</p></li>
<li><p><code>EXTERNAL</code> – Configure DKIM for the identity by using
Bring Your Own DKIM (BYODKIM).</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_put_email_identity_dkim_signing_attributes_:_SigningAttributes">SigningAttributes</code></td>
<td><p>An object that contains information about the private key and
selector that you want to use to configure DKIM for the identity for
Bring Your Own DKIM (BYODKIM) for the identity, or, configures the key
length to be used for <a
href="https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html">Easy
DKIM</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DkimStatus = "PENDING"|"SUCCESS"|"FAILED"|"TEMPORARY_FAILURE"|"NOT_STARTED",
      DkimTokens = list(
        "string"
      )
    )

### Request syntax

    svc$put_email_identity_dkim_signing_attributes(
      EmailIdentity = "string",
      SigningAttributesOrigin = "AWS_SES"|"EXTERNAL",
      SigningAttributes = list(
        DomainSigningSelector = "string",
        DomainSigningPrivateKey = "string",
        NextSigningKeyLength = "RSA_1024_BIT"|"RSA_2048_BIT"
      )
    )
