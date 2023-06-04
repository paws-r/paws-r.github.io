<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_list_parallel_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of your parallel data resources in Amazon Translate

### Description

Provides a list of your parallel data resources in Amazon Translate.

### Usage

    translate_list_parallel_data(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="translate_list_parallel_data_:_NextToken">NextToken</code></td>
<td><p>A string that specifies the next page of results to return in a
paginated response.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_list_parallel_data_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of parallel data resources returned for each
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ParallelDataPropertiesList = list(
        list(
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
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_parallel_data(
      NextToken = "string",
      MaxResults = 123
    )
