<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>devopsguru_list_anomalous_log_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the list of log groups that contain log anomalies

### Description

Returns the list of log groups that contain log anomalies.

### Usage

    devopsguru_list_anomalous_log_groups(InsightId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="devopsguru_list_anomalous_log_groups_:_InsightId">InsightId</code></td>
<td><p>[required] The ID of the insight containing the log
groups.</p></td>
</tr>
<tr class="even">
<td><code
id="devopsguru_list_anomalous_log_groups_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code
id="devopsguru_list_anomalous_log_groups_:_NextToken">NextToken</code></td>
<td><p>The pagination token to use to retrieve the next page of results
for this operation. If this value is null, it retrieves the first
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InsightId = "string",
      AnomalousLogGroups = list(
        list(
          LogGroupName = "string",
          ImpactStartTime = as.POSIXct(
            "2015-01-01"
          ),
          ImpactEndTime = as.POSIXct(
            "2015-01-01"
          ),
          NumberOfLogLinesScanned = 123,
          LogAnomalyShowcases = list(
            list(
              LogAnomalyClasses = list(
                list(
                  LogStreamName = "string",
                  LogAnomalyType = "KEYWORD"|"KEYWORD_TOKEN"|"FORMAT"|"HTTP_CODE"|"BLOCK_FORMAT"|"NUMERICAL_POINT"|"NUMERICAL_NAN"|"NEW_FIELD_NAME",
                  LogAnomalyToken = "string",
                  LogEventId = "string",
                  Explanation = "string",
                  NumberOfLogLinesOccurrences = 123,
                  LogEventTimestamp = as.POSIXct(
                    "2015-01-01"
                  )
                )
              )
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_anomalous_log_groups(
      InsightId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
