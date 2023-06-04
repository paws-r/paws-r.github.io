<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_update_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified domain

### Description

Updates the specified domain. This API has clobber behavior, and clears
and replaces all attributes. If an optional field, such as 'Description'
is not provided, it is removed from the domain.

### Usage

    voiceid_update_domain(Description, DomainId, Name,
      ServerSideEncryptionConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="voiceid_update_domain_:_Description">Description</code></td>
<td><p>A brief description about this domain.</p></td>
</tr>
<tr class="even">
<td><code id="voiceid_update_domain_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain to be updated.</p></td>
</tr>
<tr class="odd">
<td><code id="voiceid_update_domain_:_Name">Name</code></td>
<td><p>[required] The name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="voiceid_update_domain_:_ServerSideEncryptionConfiguration">ServerSideEncryptionConfiguration</code></td>
<td><p>[required] The configuration, containing the KMS key identifier,
to be used by Voice ID for the server-side encryption of your data.
Changing the domain's associated KMS key immediately triggers an
asynchronous process to remove dependency on the old KMS key, such that
the domain's data can only be accessed using the new KMS key. The
domain's <code>ServerSideEncryptionUpdateDetails</code> contains the
details for this process.</p></td>
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

    svc$update_domain(
      Description = "string",
      DomainId = "string",
      Name = "string",
      ServerSideEncryptionConfiguration = list(
        KmsKeyId = "string"
      )
    )
