<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>voiceid_describe_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified domain

### Description

Describes the specified domain.

### Usage

    voiceid_describe_domain(DomainId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="voiceid_describe_domain_:_DomainId">DomainId</code></td>
<td><p>[required] The identifier of the domain that you are
describing.</p></td>
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

    svc$describe_domain(
      DomainId = "string"
    )
