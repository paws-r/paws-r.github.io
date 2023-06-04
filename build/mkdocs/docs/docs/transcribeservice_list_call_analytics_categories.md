<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_list_call_analytics_categories</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of Call Analytics categories, including all rules that make up each category

### Description

Provides a list of Call Analytics categories, including all rules that
make up each category.

To get detailed information about a specific Call Analytics category,
use the operation.

### Usage

    transcribeservice_list_call_analytics_categories(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_list_call_analytics_categories_:_NextToken">NextToken</code></td>
<td><p>If your <code>list_call_analytics_categories</code> request
returns more results than can be displayed, <code>NextToken</code> is
displayed in the response with an associated string. To get the next
page of results, copy this string and repeat your request, including
<code>NextToken</code> with the value of the copied string. Repeat as
needed to view all your results.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_list_call_analytics_categories_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of Call Analytics categories to return in each
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
      Categories = list(
        list(
          CategoryName = "string",
          Rules = list(
            list(
              NonTalkTimeFilter = list(
                Threshold = 123,
                AbsoluteTimeRange = list(
                  StartTime = 123,
                  EndTime = 123,
                  First = 123,
                  Last = 123
                ),
                RelativeTimeRange = list(
                  StartPercentage = 123,
                  EndPercentage = 123,
                  First = 123,
                  Last = 123
                ),
                Negate = TRUE|FALSE
              ),
              InterruptionFilter = list(
                Threshold = 123,
                ParticipantRole = "AGENT"|"CUSTOMER",
                AbsoluteTimeRange = list(
                  StartTime = 123,
                  EndTime = 123,
                  First = 123,
                  Last = 123
                ),
                RelativeTimeRange = list(
                  StartPercentage = 123,
                  EndPercentage = 123,
                  First = 123,
                  Last = 123
                ),
                Negate = TRUE|FALSE
              ),
              TranscriptFilter = list(
                TranscriptFilterType = "EXACT",
                AbsoluteTimeRange = list(
                  StartTime = 123,
                  EndTime = 123,
                  First = 123,
                  Last = 123
                ),
                RelativeTimeRange = list(
                  StartPercentage = 123,
                  EndPercentage = 123,
                  First = 123,
                  Last = 123
                ),
                ParticipantRole = "AGENT"|"CUSTOMER",
                Negate = TRUE|FALSE,
                Targets = list(
                  "string"
                )
              ),
              SentimentFilter = list(
                Sentiments = list(
                  "POSITIVE"|"NEGATIVE"|"NEUTRAL"|"MIXED"
                ),
                AbsoluteTimeRange = list(
                  StartTime = 123,
                  EndTime = 123,
                  First = 123,
                  Last = 123
                ),
                RelativeTimeRange = list(
                  StartPercentage = 123,
                  EndPercentage = 123,
                  First = 123,
                  Last = 123
                ),
                ParticipantRole = "AGENT"|"CUSTOMER",
                Negate = TRUE|FALSE
              )
            )
          ),
          CreateTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdateTime = as.POSIXct(
            "2015-01-01"
          ),
          InputType = "REAL_TIME"|"POST_CALL"
        )
      )
    )

### Request syntax

    svc$list_call_analytics_categories(
      NextToken = "string",
      MaxResults = 123
    )
