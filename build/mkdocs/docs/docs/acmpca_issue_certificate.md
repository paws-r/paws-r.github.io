<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_issue_certificate</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Uses your private certificate authority (CA), or one that has been shared with you, to issue a client certificate

### Description

Uses your private certificate authority (CA), or one that has been
shared with you, to issue a client certificate. This action returns the
Amazon Resource Name (ARN) of the certificate. You can retrieve the
certificate by calling the `get_certificate` action and specifying the
ARN.

You cannot use the ACM **ListCertificateAuthorities** action to retrieve
the ARNs of the certificates that you issue by using Amazon Web Services
Private CA.

### Usage

    acmpca_issue_certificate(ApiPassthrough, CertificateAuthorityArn, Csr,
      SigningAlgorithm, TemplateArn, Validity, ValidityNotBefore,
      IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_issue_certificate_:_ApiPassthrough">ApiPassthrough</code></td>
<td><p>Specifies X.509 certificate information to be included in the
issued certificate. An <code>APIPassthrough</code> or
<code>APICSRPassthrough</code> template variant must be selected, or
else this parameter is ignored. For more information about using these
templates, see <a
href="https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html">Understanding
Certificate Templates</a>.</p>
<p>If conflicting or duplicate certificate information is supplied
during certificate issuance, Amazon Web Services Private CA applies <a
href="https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html#template-order-of-operations">order
of operation rules</a> to determine what information is used.</p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_issue_certificate_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that was returned when
you called <code>create_certificate_authority</code>. This must be of
the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code></p></td>
</tr>
<tr class="odd">
<td><code id="acmpca_issue_certificate_:_Csr">Csr</code></td>
<td><p>[required] The certificate signing request (CSR) for the
certificate you want to issue. As an example, you can use the following
OpenSSL command to create the CSR and a 2048 bit RSA private key.</p>
<p><code
style="white-space: pre;">⁠openssl req -new -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr⁠</code></p>
<p>If you have a configuration file, you can then use the following
OpenSSL command. The <code>usr_cert</code> block in the configuration
file contains your X509 version 3 extensions.</p>
<p><code
style="white-space: pre;">⁠openssl req -new -config openssl_rsa.cnf -extensions usr_cert -newkey rsa:2048 -days 365 -keyout private/test_cert_priv_key.pem -out csr/test_cert_.csr⁠</code></p>
<p>Note: A CSR must provide either a <em>subject name</em> or a
<em>subject alternative name</em> or the request will be
rejected.</p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_issue_certificate_:_SigningAlgorithm">SigningAlgorithm</code></td>
<td><p>[required] The name of the algorithm that will be used to sign
the certificate to be issued.</p>
<p>This parameter should not be confused with the
<code>SigningAlgorithm</code> parameter used to sign a CSR in the
<code>create_certificate_authority</code> action.</p>
<p>The specified signing algorithm family (RSA or ECDSA) much match the
algorithm family of the CA's secret key.</p></td>
</tr>
<tr class="odd">
<td><code
id="acmpca_issue_certificate_:_TemplateArn">TemplateArn</code></td>
<td><p>Specifies a custom configuration template to use when issuing a
certificate. If this parameter is not provided, Amazon Web Services
Private CA defaults to the <code>EndEntityCertificate/V1</code>
template. For CA certificates, you should choose the shortest path
length that meets your needs. The path length is indicated by the
PathLen<em>N</em> portion of the ARN, where <em>N</em> is the <a
href="https://docs.aws.amazon.com/privateca/latest/userguide/PcaTerms.html#terms-cadepth">CA
depth</a>.</p>
<p>Note: The CA depth configured on a subordinate CA certificate must
not exceed the limit set by its parents in the CA hierarchy.</p>
<p>For a list of <code>TemplateArn</code> values supported by Amazon Web
Services Private CA, see <a
href="https://docs.aws.amazon.com/privateca/latest/userguide/UsingTemplates.html">Understanding
Certificate Templates</a>.</p></td>
</tr>
<tr class="even">
<td><code id="acmpca_issue_certificate_:_Validity">Validity</code></td>
<td><p>[required] Information describing the end of the validity period
of the certificate. This parameter sets the “Not After” date for the
certificate.</p>
<p>Certificate validity is the period of time during which a certificate
is valid. Validity can be expressed as an explicit date and time when
the certificate expires, or as a span of time after issuance, stated in
days, months, or years. For more information, see <a
href="https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.5">Validity</a>
in RFC 5280.</p>
<p>This value is unaffected when <code>ValidityNotBefore</code> is also
specified. For example, if <code>Validity</code> is set to 20 days in
the future, the certificate will expire 20 days from issuance time
regardless of the <code>ValidityNotBefore</code> value.</p>
<p>The end of the validity period configured on a certificate must not
exceed the limit set on its parents in the CA hierarchy.</p></td>
</tr>
<tr class="odd">
<td><code
id="acmpca_issue_certificate_:_ValidityNotBefore">ValidityNotBefore</code></td>
<td><p>Information describing the start of the validity period of the
certificate. This parameter sets the “Not Before" date for the
certificate.</p>
<p>By default, when issuing a certificate, Amazon Web Services Private
CA sets the "Not Before" date to the issuance time minus 60 minutes.
This compensates for clock inconsistencies across computer systems. The
<code>ValidityNotBefore</code> parameter can be used to customize the
“Not Before” value.</p>
<p>Unlike the <code>Validity</code> parameter, the
<code>ValidityNotBefore</code> parameter is optional.</p>
<p>The <code>ValidityNotBefore</code> value is expressed as an explicit
date and time, using the <code>Validity</code> type value
<code>ABSOLUTE</code>. For more information, see Validity in this API
reference and <a
href="https://datatracker.ietf.org/doc/html/rfc5280#section-4.1.2.5">Validity</a>
in RFC 5280.</p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_issue_certificate_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>Alphanumeric string that can be used to distinguish between calls
to the <strong>IssueCertificate</strong> action. Idempotency tokens for
<strong>IssueCertificate</strong> time out after one minute. Therefore,
if you call <strong>IssueCertificate</strong> multiple times with the
same idempotency token within one minute, Amazon Web Services Private CA
recognizes that you are requesting only one certificate and will issue
only one. If you change the idempotency token for each call, Amazon Web
Services Private CA recognizes that you are requesting multiple
certificates.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CertificateArn = "string"
    )

### Request syntax

    svc$issue_certificate(
      ApiPassthrough = list(
        Extensions = list(
          CertificatePolicies = list(
            list(
              CertPolicyId = "string",
              PolicyQualifiers = list(
                list(
                  PolicyQualifierId = "CPS",
                  Qualifier = list(
                    CpsUri = "string"
                  )
                )
              )
            )
          ),
          ExtendedKeyUsage = list(
            list(
              ExtendedKeyUsageType = "SERVER_AUTH"|"CLIENT_AUTH"|"CODE_SIGNING"|"EMAIL_PROTECTION"|"TIME_STAMPING"|"OCSP_SIGNING"|"SMART_CARD_LOGIN"|"DOCUMENT_SIGNING"|"CERTIFICATE_TRANSPARENCY",
              ExtendedKeyUsageObjectIdentifier = "string"
            )
          ),
          KeyUsage = list(
            DigitalSignature = TRUE|FALSE,
            NonRepudiation = TRUE|FALSE,
            KeyEncipherment = TRUE|FALSE,
            DataEncipherment = TRUE|FALSE,
            KeyAgreement = TRUE|FALSE,
            KeyCertSign = TRUE|FALSE,
            CRLSign = TRUE|FALSE,
            EncipherOnly = TRUE|FALSE,
            DecipherOnly = TRUE|FALSE
          ),
          SubjectAlternativeNames = list(
            list(
              OtherName = list(
                TypeId = "string",
                Value = "string"
              ),
              Rfc822Name = "string",
              DnsName = "string",
              DirectoryName = list(
                Country = "string",
                Organization = "string",
                OrganizationalUnit = "string",
                DistinguishedNameQualifier = "string",
                State = "string",
                CommonName = "string",
                SerialNumber = "string",
                Locality = "string",
                Title = "string",
                Surname = "string",
                GivenName = "string",
                Initials = "string",
                Pseudonym = "string",
                GenerationQualifier = "string",
                CustomAttributes = list(
                  list(
                    ObjectIdentifier = "string",
                    Value = "string"
                  )
                )
              ),
              EdiPartyName = list(
                PartyName = "string",
                NameAssigner = "string"
              ),
              UniformResourceIdentifier = "string",
              IpAddress = "string",
              RegisteredId = "string"
            )
          ),
          CustomExtensions = list(
            list(
              ObjectIdentifier = "string",
              Value = "string",
              Critical = TRUE|FALSE
            )
          )
        ),
        Subject = list(
          Country = "string",
          Organization = "string",
          OrganizationalUnit = "string",
          DistinguishedNameQualifier = "string",
          State = "string",
          CommonName = "string",
          SerialNumber = "string",
          Locality = "string",
          Title = "string",
          Surname = "string",
          GivenName = "string",
          Initials = "string",
          Pseudonym = "string",
          GenerationQualifier = "string",
          CustomAttributes = list(
            list(
              ObjectIdentifier = "string",
              Value = "string"
            )
          )
        )
      ),
      CertificateAuthorityArn = "string",
      Csr = raw,
      SigningAlgorithm = "SHA256WITHECDSA"|"SHA384WITHECDSA"|"SHA512WITHECDSA"|"SHA256WITHRSA"|"SHA384WITHRSA"|"SHA512WITHRSA",
      TemplateArn = "string",
      Validity = list(
        Value = 123,
        Type = "END_DATE"|"ABSOLUTE"|"DAYS"|"MONTHS"|"YEARS"
      ),
      ValidityNotBefore = list(
        Value = 123,
        Type = "END_DATE"|"ABSOLUTE"|"DAYS"|"MONTHS"|"YEARS"
      ),
      IdempotencyToken = "string"
    )
