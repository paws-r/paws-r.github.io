<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_list_language_models</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of custom language models that match the specified criteria

### Description

Provides a list of custom language models that match the specified
criteria. If no criteria are specified, all custom language models are
returned.

To get detailed information about a specific custom language model, use
the operation.

### Usage

    transcribeservice_list_language_models(StatusEquals, NameContains,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_list_language_models_:_StatusEquals">StatusEquals</code></td>
<td><p>Returns only custom language models with the specified status.
Language models are ordered by creation date, with the newest model
first. If you don't include <code>StatusEquals</code>, all custom
language models are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_list_language_models_:_NameContains">NameContains</code></td>
<td><p>Returns only the custom language models that contain the
specified string. The search is not case sensitive.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_list_language_models_:_NextToken">NextToken</code></td>
<td><p>If your <code>list_language_models</code> request returns more
results than can be displayed, <code>NextToken</code> is displayed in
the response with an associated string. To get the next page of results,
copy this string and repeat your request, including
<code>NextToken</code> with the value of the copied string. Repeat as
needed to view all your results.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_list_language_models_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of custom language models to return in each
page of results. If there are fewer results than the value that you
specify, only the actual results are returned. If you don't specify a
value, a default of 5 is used.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Models = list(
        list(
          ModelName = "string",
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          LanguageCode = "en-US"|"hi-IN"|"es-US"|"en-GB"|"en-AU"|"de-DE"|"ja-JP",
          BaseModelName = "NarrowBand"|"WideBand",
          ModelStatus = "IN_PROGRESS"|"FAILED"|"COMPLETED",
          UpgradeAvailability = TRUE|FALSE,
          FailureReason = "string",
          InputDataConfig = list(
            S3Uri = "string",
            TuningDataS3Uri = "string",
            DataAccessRoleArn = "string"
          )
        )
      )
    )

### Request syntax

    svc$list_language_models(
      StatusEquals = "IN_PROGRESS"|"FAILED"|"COMPLETED",
      NameContains = "string",
      NextToken = "string",
      MaxResults = 123
    )
