<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_describe_certificate_authority</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists information about your private certificate authority (CA) or one that has been shared with you

### Description

Lists information about your private certificate authority (CA) or one
that has been shared with you. You specify the private CA on input by
its ARN (Amazon Resource Name). The output contains the status of your
CA. This can be any of the following:

-   `CREATING` - Amazon Web Services Private CA is creating your private
    certificate authority.

-   `PENDING_CERTIFICATE` - The certificate is pending. You must use
    your Amazon Web Services Private CA-hosted or on-premises root or
    subordinate CA to sign your private CA CSR and then import it into
    Amazon Web Services Private CA.

-   `ACTIVE` - Your private CA is active.

-   `DISABLED` - Your private CA has been disabled.

-   `EXPIRED` - Your private CA certificate has expired.

-   `FAILED` - Your private CA has failed. Your CA can fail because of
    problems such a network outage or back-end Amazon Web Services
    failure or other errors. A failed CA can never return to the pending
    state. You must create a new CA.

-   `DELETED` - Your private CA is within the restoration period, after
    which it is permanently deleted. The length of time remaining in the
    CA's restoration period is also included in this action's output.

### Usage

    acmpca_describe_certificate_authority(CertificateAuthorityArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_describe_certificate_authority_:_CertificateAuthorityArn">CertificateAuthorityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that was returned when
you called <code>create_certificate_authority</code>. This must be of
the form:</p>
<p><code>arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012 </code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CertificateAuthority = list(
        Arn = "string",
        OwnerAccount = "string",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        LastStateChangeAt = as.POSIXct(
          "2015-01-01"
        ),
        Type = "ROOT"|"SUBORDINATE",
        Serial = "string",
        Status = "CREATING"|"PENDING_CERTIFICATE"|"ACTIVE"|"DELETED"|"DISABLED"|"EXPIRED"|"FAILED",
        NotBefore = as.POSIXct(
          "2015-01-01"
        ),
        NotAfter = as.POSIXct(
          "2015-01-01"
        ),
        FailureReason = "REQUEST_TIMED_OUT"|"UNSUPPORTED_ALGORITHM"|"OTHER",
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
        RestorableUntil = as.POSIXct(
          "2015-01-01"
        ),
        KeyStorageSecurityStandard = "FIPS_140_2_LEVEL_2_OR_HIGHER"|"FIPS_140_2_LEVEL_3_OR_HIGHER",
        UsageMode = "GENERAL_PURPOSE"|"SHORT_LIVED_CERTIFICATE"
      )
    )

### Request syntax

    svc$describe_certificate_authority(
      CertificateAuthorityArn = "string"
    )
