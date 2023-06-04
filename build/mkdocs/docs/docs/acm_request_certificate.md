<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acm_request_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Requests an ACM certificate for use with other Amazon Web Services services

### Description

Requests an ACM certificate for use with other Amazon Web Services
services. To request an ACM certificate, you must specify a fully
qualified domain name (FQDN) in the `DomainName` parameter. You can also
specify additional FQDNs in the `SubjectAlternativeNames` parameter.

If you are requesting a private certificate, domain validation is not
required. If you are requesting a public certificate, each domain name
that you specify must be validated to verify that you own or control the
domain. You can use [DNS
validation](https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html)
or [email
validation](https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html).
We recommend that you use DNS validation. ACM issues public certificates
after receiving approval from the domain owner.

ACM behavior differs from the [RFC
6125](https://datatracker.ietf.org/doc/html/rfc6125#appendix-B.2)
specification of the certificate validation process. ACM first checks
for a Subject Alternative Name, and, if it finds one, ignores the common
name (CN).

After successful completion of the `request_certificate` action, there
is a delay of several seconds before you can retrieve information about
the new certificate.

### Usage

    acm_request_certificate(DomainName, ValidationMethod,
      SubjectAlternativeNames, IdempotencyToken, DomainValidationOptions,
      Options, CertificateAuthorityArn, Tags, KeyAlgorithm)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acm_request_certificate_:_DomainName">DomainName</code></td>
<td><p>[required] Fully qualified domain name (FQDN), such as
www.example.com, that you want to secure with an ACM certificate. Use an
asterisk (*) to create a wildcard certificate that protects several
sites in the same domain. For example, *.example.com protects
www.example.com, site.example.com, and images.example.com.</p>
<p>In compliance with <a
href="https://datatracker.ietf.org/doc/html/rfc5280">RFC 5280</a>, the
length of the domain name (technically, the Common Name) that you
provide cannot exceed 64 octets (characters), including periods. To add
a longer domain name, specify it in the Subject Alternative Name field,
which supports names up to 253 octets in length.</p></td>
</tr>
<tr class="even">
<td><code
id="acm_request_certificate_:_ValidationMethod">ValidationMethod</code></td>
<td><p>The method you want to use if you are requesting a public
certificate to validate that you own or control domain. You can <a
href="https://docs.aws.amazon.com/acm/latest/userguide/dns-validation.html">validate
with DNS</a> or <a
href="https://docs.aws.amazon.com/acm/latest/userguide/email-validation.html">validate
with email</a>. We recommend that you use DNS validation.</p></td>
</tr>
<tr class="odd">
<td><code
id="acm_request_certificate_:_SubjectAlternativeNames">SubjectAlternativeNames</code></td>
<td><p>Additional FQDNs to be included in the Subject Alternative Name
extension of the ACM certificate. For example, add the name
www.example.net to a certificate for which the <code>DomainName</code>
field is www.example.com if users can reach your site by using either
name. The maximum number of domain names that you can add to an ACM
certificate is 100. However, the initial quota is 10 domain names. If
you need more than 10 names, you must request a quota increase. For more
information, see <a
href="https://docs.aws.amazon.com/acm/latest/userguide/acm-limits.html">Quotas</a>.</p>
<p>The maximum length of a SAN DNS name is 253 octets. The name is made
up of multiple labels separated by periods. No label can be longer than
63 octets. Consider the following examples:</p>
<ul>
<li><p><code
style="white-space: pre;">⁠(63 octets).(63 octets).(63 octets).(61 octets)⁠</code>
is legal because the total length is 253 octets (63+1+63+1+63+1+61) and
no label exceeds 63 octets.</p></li>
<li><p><code
style="white-space: pre;">⁠(64 octets).(63 octets).(63 octets).(61 octets)⁠</code>
is not legal because the total length exceeds 253 octets
(64+1+63+1+63+1+61) and the first label exceeds 63 octets.</p></li>
<li><p><code
style="white-space: pre;">⁠(63 octets).(63 octets).(63 octets).(62 octets)⁠</code>
is not legal because the total length of the DNS name
(63+1+63+1+63+1+62) exceeds 253 octets.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="acm_request_certificate_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>Customer chosen string that can be used to distinguish between
calls to <code>request_certificate</code>. Idempotency tokens time out
after one hour. Therefore, if you call <code>request_certificate</code>
multiple times with the same idempotency token within one hour, ACM
recognizes that you are requesting only one certificate and will issue
only one. If you change the idempotency token for each call, ACM
recognizes that you are requesting multiple certificates.</p></td>
</tr>
<tr class="odd">
<td><code
id="acm_request_certificate_:_DomainValidationOptions">DomainValidationOptions</code></td>
<td><p>The domain name that you want ACM to use to send you emails so
that you can validate domain ownership.</p></td>
</tr>
<tr class="even">
<td><code id="acm_request_certificate_:_Options">Options</code></td>
<td><p>Currently, you can use this parameter to specify whether to add
the certificate to a certificate transparency log. Certificate
transparency makes it possible to detect SSL/TLS certificates that have
been mistakenly or maliciously issued. Certificates that have not been
logged typically produce an error message in a browser. For more
information, see <a
href="https://docs.aws.amazon.com/acm/latest/userguide/acm-bestpractices.html#best-practices-transparency">Opting
Out of Certificate Transparency Logging</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="acm_request_certificate_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the private certificate
authority (CA) that will be used to issue the certificate. If you do not
provide an ARN and you are trying to request a private certificate, ACM
will attempt to issue a public certificate. For more information about
private CAs, see the <a
href="https://docs.aws.amazon.com/privateca/latest/userguide/PcaWelcome.html">Amazon
Web Services Private Certificate Authority</a> user guide. The ARN must
have the following form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012</code></p></td>
</tr>
<tr class="even">
<td><code id="acm_request_certificate_:_Tags">Tags</code></td>
<td><p>One or more resource tags to associate with the
certificate.</p></td>
</tr>
<tr class="odd">
<td><code
id="acm_request_certificate_:_KeyAlgorithm">KeyAlgorithm</code></td>
<td><p>Specifies the algorithm of the public and private key pair that
your certificate uses to encrypt data. RSA is the default key algorithm
for ACM certificates. Elliptic Curve Digital Signature Algorithm (ECDSA)
keys are smaller, offering security comparable to RSA keys but with
greater computing efficiency. However, ECDSA is not supported by all
network clients. Some AWS services may require RSA keys, or only support
ECDSA keys of a particular size, while others allow the use of either
RSA and ECDSA keys to ensure that compatibility is not broken. Check the
requirements for the AWS service where you plan to deploy your
certificate.</p>
<p>Default: RSA_2048</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CertificateArn = "string"
    )

### Request syntax

    svc$request_certificate(
      DomainName = "string",
      ValidationMethod = "EMAIL"|"DNS",
      SubjectAlternativeNames = list(
        "string"
      ),
      IdempotencyToken = "string",
      DomainValidationOptions = list(
        list(
          DomainName = "string",
          ValidationDomain = "string"
        )
      ),
      Options = list(
        CertificateTransparencyLoggingPreference = "ENABLED"|"DISABLED"
      ),
      CertificateAuthorityArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      KeyAlgorithm = "RSA_1024"|"RSA_2048"|"RSA_3072"|"RSA_4096"|"EC_prime256v1"|"EC_secp384r1"|"EC_secp521r1"
    )
