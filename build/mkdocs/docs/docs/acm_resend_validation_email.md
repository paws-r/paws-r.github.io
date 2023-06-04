<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_resend_validation_email</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Resends the email that requests domain ownership validation

### Description

Resends the email that requests domain ownership validation. The domain
owner or an authorized representative must approve the ACM certificate
before it can be issued. The certificate can be approved by clicking a
link in the mail to navigate to the Amazon certificate approval website
and then clicking **I Approve**. However, the validation email can be
blocked by spam filters. Therefore, if you do not receive the original
mail, you can request that the mail be resent within 72 hours of
requesting the ACM certificate. If more than 72 hours have elapsed since
your original request or since your last attempt to resend validation
mail, you must request a new certificate. For more information about
setting up your contact email addresses, see [Configure Email for your
Domain](https://docs.aws.amazon.com/acm/latest/userguide/setup-email.html).

### Usage

    acm_resend_validation_email(CertificateArn, Domain, ValidationDomain)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_resend_validation_email_:_CertificateArn">CertificateArn</code></td>
<td><p>[required] String that contains the ARN of the requested
certificate. The certificate ARN is generated and returned by the
<code>request_certificate</code> action as soon as the request is made.
By default, using this parameter causes email to be sent to all
top-level domains you specified in the certificate request. The ARN must
be of the form:</p>
<p><code>arn:aws:acm:us-east-1:123456789012:certificate/12345678-1234-1234-1234-123456789012</code></p></td>
</tr>
<tr class="even">
<td><code id="acm_resend_validation_email_:_Domain">Domain</code></td>
<td><p>[required] The fully qualified domain name (FQDN) of the
certificate that needs to be validated.</p></td>
</tr>
<tr class="odd">
<td><code
id="acm_resend_validation_email_:_ValidationDomain">ValidationDomain</code></td>
<td><p>[required] The base validation domain that will act as the suffix
of the email addresses that are used to send the emails. This must be
the same as the <code>Domain</code> value or a superdomain of the
<code>Domain</code> value. For example, if you requested a certificate
for <code>site.subdomain.example.com</code> and specify a
<strong>ValidationDomain</strong> of <code>subdomain.example.com</code>,
ACM sends email to the domain registrant, technical contact, and
administrative contact in WHOIS and the following five addresses:</p>
<ul>
<li><p>admin@subdomain.example.com</p></li>
<li><p>administrator@subdomain.example.com</p></li>
<li><p>hostmaster@subdomain.example.com</p></li>
<li><p>postmaster@subdomain.example.com</p></li>
<li><p>webmaster@subdomain.example.com</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$resend_validation_email(
      CertificateArn = "string",
      Domain = "string",
      ValidationDomain = "string"
    )
