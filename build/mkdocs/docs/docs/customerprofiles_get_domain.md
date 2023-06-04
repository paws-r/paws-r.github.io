<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>customerprofiles_get_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a specific domain

### Description

Returns information about a specific domain.

### Usage

    customerprofiles_get_domain(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="customerprofiles_get_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The unique name of the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainName = "string",
      DefaultExpirationDays = 123,
      DefaultEncryptionKey = "string",
      DeadLetterQueueUrl = "string",
      Stats = list(
        ProfileCount = 123,
        MeteringProfileCount = 123,
        ObjectCount = 123,
        TotalSize = 123
      ),
      Matching = list(
        Enabled = TRUE|FALSE,
        JobSchedule = list(
          DayOfTheWeek = "SUNDAY"|"MONDAY"|"TUESDAY"|"WEDNESDAY"|"THURSDAY"|"FRIDAY"|"SATURDAY",
          Time = "string"
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
        ExportingConfig = list(
          S3Exporting = list(
            S3BucketName = "string",
            S3KeyName = "string"
          )
        )
      ),
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_domain(
      DomainName = "string"
    )
