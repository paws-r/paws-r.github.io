<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_get_call_analytics_category</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the specified Call Analytics category

### Description

Provides information about the specified Call Analytics category.

To get a list of your Call Analytics categories, use the operation.

### Usage

    transcribeservice_get_call_analytics_category(CategoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_get_call_analytics_category_:_CategoryName">CategoryName</code></td>
<td><p>[required] The name of the Call Analytics category you want
information about. Category names are case sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CategoryProperties = list(
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

### Request syntax

    svc$get_call_analytics_category(
      CategoryName = "string"
    )
