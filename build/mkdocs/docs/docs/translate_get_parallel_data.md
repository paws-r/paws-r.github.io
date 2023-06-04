<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_get_parallel_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about a parallel data resource

### Description

Provides information about a parallel data resource.

### Usage

    translate_get_parallel_data(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="translate_get_parallel_data_:_Name">Name</code></td>
<td><p>[required] The name of the parallel data resource that is being
retrieved.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ParallelDataProperties = list(
        Name = "string",
        Arn = "string",
        Description = "string",
        Status = "CREATING"|"UPDATING"|"ACTIVE"|"DELETING"|"FAILED",
        SourceLanguageCode = "string",
        TargetLanguageCodes = list(
          "string"
        ),
        ParallelDataConfig = list(
          S3Uri = "string",
          Format = "TSV"|"CSV"|"TMX"
        ),
        Message = "string",
        ImportedDataSize = 123,
        ImportedRecordCount = 123,
        FailedRecordCount = 123,
        SkippedRecordCount = 123,
        EncryptionKey = list(
          Type = "KMS",
          Id = "string"
        ),
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedAt = as.POSIXct(
          "2015-01-01"
        ),
        LatestUpdateAttemptStatus = "CREATING"|"UPDATING"|"ACTIVE"|"DELETING"|"FAILED",
        LatestUpdateAttemptAt = as.POSIXct(
          "2015-01-01"
        )
      ),
      DataLocation = list(
        RepositoryType = "string",
        Location = "string"
      ),
      AuxiliaryDataLocation = list(
        RepositoryType = "string",
        Location = "string"
      ),
      LatestUpdateAttemptAuxiliaryDataLocation = list(
        RepositoryType = "string",
        Location = "string"
      )
    )

### Request syntax

    svc$get_parallel_data(
      Name = "string"
    )
