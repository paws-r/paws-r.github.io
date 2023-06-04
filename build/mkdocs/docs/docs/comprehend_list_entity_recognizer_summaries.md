<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_list_entity_recognizer_summaries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of summaries for the entity recognizers that you have created

### Description

Gets a list of summaries for the entity recognizers that you have
created.

### Usage

    comprehend_list_entity_recognizer_summaries(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_list_entity_recognizer_summaries_:_NextToken">NextToken</code></td>
<td><p>Identifies the next page of results to return.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_list_entity_recognizer_summaries_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return on each page. The default
is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EntityRecognizerSummariesList = list(
        list(
          RecognizerName = "string",
          NumberOfVersions = 123,
          LatestVersionCreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          LatestVersionName = "string",
          LatestVersionStatus = "SUBMITTED"|"TRAINING"|"DELETING"|"STOP_REQUESTED"|"STOPPED"|"IN_ERROR"|"TRAINED"|"TRAINED_WITH_WARNING"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_entity_recognizer_summaries(
      NextToken = "string",
      MaxResults = 123
    )
