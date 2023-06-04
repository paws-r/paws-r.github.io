<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_get_identity_resolution_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about an Identity Resolution Job in a specific domain

### Description

Returns information about an Identity Resolution Job in a specific
domain.

Identity Resolution Jobs are set up using the Amazon Connect admin
console. For more information, see [Use Identity Resolution to
consolidate similar
profiles](https://docs.aws.amazon.com/connect/latest/adminguide/use-identity-resolution.html).

### Usage

    customerprofiles_get_identity_resolution_job(DomainName, JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_get_identity_resolution_job_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
<tr class="even">
<td><code
id="customerprofiles_get_identity_resolution_job_:_JobId">JobId</code></td>
<td><p>[required] The unique identifier of the Identity Resolution
Job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainName = "string",
      JobId = "string",
      Status = "PENDING"|"PREPROCESSING"|"FIND_MATCHING"|"MERGING"|"COMPLETED"|"PARTIAL_SUCCESS"|"FAILED",
      Message = "string",
      JobStartTime = as.POSIXct(
        "2015-01-01"
      ),
      JobEndTime = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      JobExpirationTime = as.POSIXct(
        "2015-01-01"
      ),
      AutoMerging = list(
        Enabled = TRUE|FALSE,
        Consolidation = list(
          MatchingAttributesList = list(
            list(
              "string"
            )
          )
        ),
        ConflictResolution = list(
          ConflictResolvingModel = "RECENCY"|"SOURCE",
          SourceName = "string"
        ),
        MinAllowedConfidenceScoreForMerging = 123.0
      ),
      ExportingLocation = list(
        S3Exporting = list(
          S3BucketName = "string",
          S3KeyName = "string"
        )
      ),
      JobStats = list(
        NumberOfProfilesReviewed = 123,
        NumberOfMatchesFound = 123,
        NumberOfMergesDone = 123
      )
    )

### Request syntax

    svc$get_identity_resolution_job(
      DomainName = "string",
      JobId = "string"
    )
