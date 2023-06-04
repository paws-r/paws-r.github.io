<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>acmpca_list_certificate_authorities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the private certificate authorities that you created by using the CreateCertificateAuthority action

### Description

Lists the private certificate authorities that you created by using the
`create_certificate_authority` action.

### Usage

    acmpca_list_certificate_authorities(NextToken, MaxResults,
      ResourceOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="acmpca_list_certificate_authorities_:_NextToken">NextToken</code></td>
<td><p>Use this parameter when paginating results in a subsequent
request after you receive a response with truncated results. Set it to
the value of the <code>NextToken</code> parameter from the response you
just received.</p></td>
</tr>
<tr class="even">
<td><code
id="acmpca_list_certificate_authorities_:_MaxResults">MaxResults</code></td>
<td><p>Use this parameter when paginating results to specify the maximum
number of items to return in the response on each page. If additional
items exist beyond the number you specify, the <code>NextToken</code>
element is sent in the response. Use this <code>NextToken</code> value
in a subsequent request to retrieve additional items.</p></td>
</tr>
<tr class="odd">
<td><code
id="acmpca_list_certificate_authorities_:_ResourceOwner">ResourceOwner</code></td>
<td><p>Use this parameter to filter the returned set of certificate
authorities based on their owner. The default is SELF.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CertificateAuthorities = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_certificate_authorities(
      NextToken = "string",
      MaxResults = 123,
      ResourceOwner = "SELF"|"OTHER_ACCOUNTS"
    )
