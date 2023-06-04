<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_update_call_analytics_category</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the specified Call Analytics category with new rules

### Description

Updates the specified Call Analytics category with new rules. Note that
the `update_call_analytics_category` operation overwrites all existing
rules contained in the specified category. You cannot append additional
rules onto an existing category.

To create a new category, see .

### Usage

    transcribeservice_update_call_analytics_category(CategoryName, Rules,
      InputType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_update_call_analytics_category_:_CategoryName">CategoryName</code></td>
<td><p>[required] The name of the Call Analytics category you want to
update. Category names are case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_update_call_analytics_category_:_Rules">Rules</code></td>
<td><p>[required] The rules used for the updated Call Analytics
category. The rules you provide in this field replace the ones that are
currently being used in the specified category.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_update_call_analytics_category_:_InputType">InputType</code></td>
<td><p>Choose whether you want to update a real-time or a post-call
category. The input type you specify must match the input type specified
when the category was created. For example, if you created a category
with the <code>POST_CALL</code> input type, you must use
<code>POST_CALL</code> as the input type when updating this
category.</p></td>
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

    svc$update_call_analytics_category(
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
      InputType = "REAL_TIME"|"POST_CALL"
    )
