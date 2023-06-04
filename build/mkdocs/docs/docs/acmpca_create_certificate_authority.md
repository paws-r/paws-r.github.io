<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_create_certificate_authority</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a root or subordinate private certificate authority (CA)

### Description

Creates a root or subordinate private certificate authority (CA). You
must specify the CA configuration, an optional configuration for Online
Certificate Status Protocol (OCSP) and/or a certificate revocation list
(CRL), the CA type, and an optional idempotency token to avoid
accidental creation of multiple CAs. The CA configuration specifies the
name of the algorithm and key size to be used to create the CA private
key, the type of signing algorithm that the CA uses, and X.500 subject
information. The OCSP configuration can optionally specify a custom URL
for the OCSP responder. The CRL configuration specifies the CRL
expiration period in days (the validity period of the CRL), the Amazon
S3 bucket that will contain the CRL, and a CNAME alias for the S3 bucket
that is included in certificates issued by the CA. If successful, this
action returns the Amazon Resource Name (ARN) of the CA.

Both Amazon Web Services Private CA and the IAM principal must have
permission to write to the S3 bucket that you specify. If the IAM
principal making the call does not have permission to write to the
bucket, then an exception is thrown. For more information, see [Access
policies for CRLs in Amazon
S3](https://docs.aws.amazon.com/privateca/latest/userguide/crl-planning.html#s3-policies).

Amazon Web Services Private CA assets that are stored in Amazon S3 can
be protected with encryption. For more information, see [Encrypting Your
CRLs](https://docs.aws.amazon.com/privateca/latest/userguide/#crl-encryption).

### Usage

    acmpca_create_certificate_authority(CertificateAuthorityConfiguration,
      RevocationConfiguration, CertificateAuthorityType, IdempotencyToken,
      KeyStorageSecurityStandard, Tags, UsageMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_create_certificate_authority_:_CertificateAuthorityConfiguration">CertificateAuthorityConfiguration</code></td>
<td><p>[required] Name and bit size of the private key algorithm, the
name of the signing algorithm, and X.500 certificate subject
information.</p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_create_certificate_authority_:_RevocationConfiguration">RevocationConfiguration</code></td>
<td><p>Contains information to enable Online Certificate Status Protocol
(OCSP) support, to enable a certificate revocation list (CRL), to enable
both, or to enable neither. The default is for both certificate
validation mechanisms to be disabled.</p>
<p>The following requirements apply to revocation configurations.</p>
<ul>
<li><p>A configuration disabling CRLs or OCSP must contain only the
<code>Enabled=False</code> parameter, and will fail if other parameters
such as <code>CustomCname</code> or <code>ExpirationInDays</code> are
included.</p></li>
<li><p>In a CRL configuration, the <code>S3BucketName</code> parameter
must conform to <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html">Amazon
S3 bucket naming rules</a>.</p></li>
<li><p>A configuration containing a custom Canonical Name (CNAME)
parameter for CRLs or OCSP must conform to <a
href="https://www.ietf.org/rfc/rfc2396.txt">RFC2396</a> restrictions on
the use of special characters in a CNAME.</p></li>
<li><p>In a CRL or OCSP configuration, the value of a CNAME parameter
must not include a protocol prefix such as "http://" or
"https://".</p></li>
</ul>
<p>For more information, see the <a
href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_OcspConfiguration.html">OcspConfiguration</a>
and <a
href="https://docs.aws.amazon.com/privateca/latest/APIReference/API_CrlConfiguration.html">CrlConfiguration</a>
types.</p></td>
</tr>
<tr class="odd">
<td><code
id="acmpca_create_certificate_authority_:_CertificateAuthorityType">CertificateAuthorityType</code></td>
<td><p>[required] The type of the certificate authority.</p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_create_certificate_authority_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>Custom string that can be used to distinguish between calls to
the <strong>CreateCertificateAuthority</strong> action. Idempotency
tokens for <strong>CreateCertificateAuthority</strong> time out after
five minutes. Therefore, if you call
<strong>CreateCertificateAuthority</strong> multiple times with the same
idempotency token within five minutes, Amazon Web Services Private CA
recognizes that you are requesting only certificate authority and will
issue only one. If you change the idempotency token for each call,
Amazon Web Services Private CA recognizes that you are requesting
multiple certificate authorities.</p></td>
</tr>
<tr class="odd">
<td><code
id="acmpca_create_certificate_authority_:_KeyStorageSecurityStandard">KeyStorageSecurityStandard</code></td>
<td><p>Specifies a cryptographic key management compliance standard used
for handling CA keys.</p>
<p>Default: FIPS_140_2_LEVEL_3_OR_HIGHER</p>
<p><em>Note:</em> <code>FIPS_140_2_LEVEL_3_OR_HIGHER</code> is not
supported in the following Regions:</p>
<ul>
<li><p>ap-northeast-3</p></li>
<li><p>ap-southeast-3</p></li>
</ul>
<p>When creating a CA in these Regions, you must provide
<code>FIPS_140_2_LEVEL_2_OR_HIGHER</code> as the argument for
<code>KeyStorageSecurityStandard</code>. Failure to do this results in
an <code>InvalidArgsException</code> with the message, "A certificate
authority cannot be created in this region with the specified security
standard."</p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_create_certificate_authority_:_Tags">Tags</code></td>
<td><p>Key-value pairs that will be attached to the new private CA. You
can associate up to 50 tags with a private CA. For information using
tags with IAM to manage permissions, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_iam-tags.html">Controlling
Access Using IAM Tags</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="acmpca_create_certificate_authority_:_UsageMode">UsageMode</code></td>
<td><p>Specifies whether the CA issues general-purpose certificates that
typically require a revocation mechanism, or short-lived certificates
that may optionally omit revocation because they expire quickly.
Short-lived certificate validity is limited to seven days.</p>
<p>The default value is GENERAL_PURPOSE.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CertificateAuthorityArn = "string"
    )

### Request syntax

    svc$create_certificate_authority(
      CertificateAuthorityConfiguration = list(
        KeyAlgorithm = "RSA_2048"|"RSA_4096"|"EC_prime256v1"|"EC_secp384r1",
        SigningAlgorithm = "SHA256WITHECDSA"|"SHA384WITHECDSA"|"SHA512WITHECDSA"|"SHA256WITHRSA"|"SHA384WITHRSA"|"SHA512WITHRSA",
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
        ),
        CsrExtensions = list(
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
          SubjectInformationAccess = list(
            list(
              AccessMethod = list(
                CustomObjectIdentifier = "string",
                AccessMethodType = "CA_REPOSITORY"|"RESOURCE_PKI_MANIFEST"|"RESOURCE_PKI_NOTIFY"
              ),
              AccessLocation = list(
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
            )
          )
        )
      ),
      RevocationConfiguration = list(
        CrlConfiguration = list(
          Enabled = TRUE|FALSE,
          ExpirationInDays = 123,
          CustomCname = "string",
          S3BucketName = "string",
          S3ObjectAcl = "PUBLIC_READ"|"BUCKET_OWNER_FULL_CONTROL"
        ),
        OcspConfiguration = list(
          Enabled = TRUE|FALSE,
          OcspCustomCname = "string"
        )
      ),
      CertificateAuthorityType = "ROOT"|"SUBORDINATE",
      IdempotencyToken = "string",
      KeyStorageSecurityStandard = "FIPS_140_2_LEVEL_2_OR_HIGHER"|"FIPS_140_2_LEVEL_3_OR_HIGHER",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      UsageMode = "GENERAL_PURPOSE"|"SHORT_LIVED_CERTIFICATE"
    )
