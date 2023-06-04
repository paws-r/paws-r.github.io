<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_create_email_identity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the process of verifying an email identity

### Description

Starts the process of verifying an email identity. An *identity* is an
email address or domain that you use when you send email. Before you can
use an identity to send email, you first have to verify it. By verifying
an identity, you demonstrate that you're the owner of the identity, and
that you've given Amazon SES API v2 permission to send email from the
identity.

When you verify an email address, Amazon SES sends an email to the
address. Your email address is verified as soon as you follow the link
in the verification email.

When you verify a domain without specifying the `DkimSigningAttributes`
object, this operation provides a set of DKIM tokens. You can convert
these tokens into CNAME records, which you then add to the DNS
configuration for your domain. Your domain is verified when Amazon SES
detects these records in the DNS configuration for your domain. This
verification method is known as [Easy
DKIM](https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html).

Alternatively, you can perform the verification process by providing
your own public-private key pair. This verification method is known as
Bring Your Own DKIM (BYODKIM). To use BYODKIM, your call to the
`create_email_identity` operation has to include the
`DkimSigningAttributes` object. When you specify this object, you
provide a selector (a component of the DNS record name that identifies
the public key to use for DKIM authentication) and a private key.

When you verify a domain, this operation provides a set of DKIM tokens,
which you can convert into CNAME tokens. You add these CNAME tokens to
the DNS configuration for your domain. Your domain is verified when
Amazon SES detects these records in the DNS configuration for your
domain. For some DNS providers, it can take 72 hours or more to complete
the domain verification process.

Additionally, you can associate an existing configuration set with the
email identity that you're verifying.

### Usage

    sesv2_create_email_identity(EmailIdentity, Tags, DkimSigningAttributes,
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
id="sesv2_create_email_identity_:_EmailIdentity">EmailIdentity</code></td>
<td><p>[required] The email address or domain to verify.</p></td>
</tr>
<tr class="even">
<td><code id="sesv2_create_email_identity_:_Tags">Tags</code></td>
<td><p>An array of objects that define the tags (keys and values) to
associate with the email identity.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_create_email_identity_:_DkimSigningAttributes">DkimSigningAttributes</code></td>
<td><p>If your request includes this object, Amazon SES configures the
identity to use Bring Your Own DKIM (BYODKIM) for DKIM authentication
purposes, or, configures the key length to be used for <a
href="https://docs.aws.amazon.com/ses/latest/dg/send-email-authentication-dkim-easy.html">Easy
DKIM</a>.</p>
<p>You can only specify this object if the email identity is a domain,
as opposed to an address.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_create_email_identity_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>The configuration set to use by default when sending from this
identity. Note that any configuration set defined in the email sending
request takes precedence.</p></td>
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
        ),
        SigningAttributesOrigin = "AWS_SES"|"EXTERNAL",
        NextSigningKeyLength = "RSA_1024_BIT"|"RSA_2048_BIT",
        CurrentSigningKeyLength = "RSA_1024_BIT"|"RSA_2048_BIT",
        LastKeyGenerationTimestamp = as.POSIXct(
          "2015-01-01"
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
      ),
      DkimSigningAttributes = list(
        DomainSigningSelector = "string",
        DomainSigningPrivateKey = "string",
        NextSigningKeyLength = "RSA_1024_BIT"|"RSA_2048_BIT"
      ),
      ConfigurationSetName = "string"
    )
