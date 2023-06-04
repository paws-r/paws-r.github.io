<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_create_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a domain that contains all Amazon Connect Voice ID data, such as speakers, fraudsters, customer audio, and voiceprints

### Description

Creates a domain that contains all Amazon Connect Voice ID data, such as
speakers, fraudsters, customer audio, and voiceprints. Every domain is
created with a default watchlist that fraudsters can be a part of.

### Usage

    voiceid_create_domain(ClientToken, Description, Name,
      ServerSideEncryptionConfiguration, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_create_domain_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_create_domain_:_Description">Description</code></td>
<td><p>A brief description of this domain.</p></td>
</tr>
<tr class="odd">
<td><code id="voiceid_create_domain_:_Name">Name</code></td>
<td><p>[required] The name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_create_domain_:_ServerSideEncryptionConfiguration">ServerSideEncryptionConfiguration</code></td>
<td><p>[required] The configuration, containing the KMS key identifier,
to be used by Voice ID for the server-side encryption of your data.
Refer to <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/encryption-at-rest.html#encryption-at-rest-voiceid">Amazon
Connect Voice ID encryption at rest</a> for more details on how the KMS
key is used.</p></td>
</tr>
<tr class="odd">
<td><code id="voiceid_create_domain_:_Tags">Tags</code></td>
<td><p>A list of tags you want added to the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Domain = list(
        Arn = "string",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        Description = "string",
        DomainId = "string",
        DomainStatus = "ACTIVE"|"PENDING"|"SUSPENDED",
        Name = "string",
        ServerSideEncryptionConfiguration = list(
          KmsKeyId = "string"
        ),
        ServerSideEncryptionUpdateDetails = list(
          Message = "string",
          OldKmsKeyId = "string",
          UpdateStatus = "IN_PROGRESS"|"COMPLETED"|"FAILED"
        ),
        UpdatedAt = as.POSIXct(
          "2015-01-01"
        ),
        WatchlistDetails = list(
          DefaultWatchlistId = "string"
        )
      )
    )

### Request syntax

    svc$create_domain(
      ClientToken = "string",
      Description = "string",
      Name = "string",
      ServerSideEncryptionConfiguration = list(
        KmsKeyId = "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
