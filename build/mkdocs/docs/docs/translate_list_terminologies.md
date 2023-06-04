<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_list_terminologies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of custom terminologies associated with your account

### Description

Provides a list of custom terminologies associated with your account.

### Usage

    translate_list_terminologies(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="translate_list_terminologies_:_NextToken">NextToken</code></td>
<td><p>If the result of the request to ListTerminologies was truncated,
include the NextToken to fetch the next group of custom
terminologies.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_list_terminologies_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of custom terminologies returned per list
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TerminologyPropertiesList = list(
        list(
          Name = "string",
          Description = "string",
          Arn = "string",
          SourceLanguageCode = "string",
          TargetLanguageCodes = list(
            "string"
          ),
          EncryptionKey = list(
            Type = "KMS",
            Id = "string"
          ),
          SizeBytes = 123,
          TermCount = 123,
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Directionality = "UNI"|"MULTI",
          Message = "string",
          SkippedTermCount = 123,
          Format = "CSV"|"TMX"|"TSV"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_terminologies(
      NextToken = "string",
      MaxResults = 123
    )
