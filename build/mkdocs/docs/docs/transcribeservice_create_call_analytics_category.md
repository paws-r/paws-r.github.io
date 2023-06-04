<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_create_call_analytics_category</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Call Analytics category

### Description

Creates a new Call Analytics category.

All categories are automatically applied to your Call Analytics
transcriptions. Note that in order to apply categories to your
transcriptions, you must create them before submitting your
transcription request, as categories cannot be applied retroactively.

When creating a new category, you can use the `InputType` parameter to
label the category as a `POST_CALL` or a `REAL_TIME` category.
`POST_CALL` categories can only be applied to post-call transcriptions
and `REAL_TIME` categories can only be applied to real-time
transcriptions. If you do not include `InputType`, your category is
created as a `POST_CALL` category by default.

Call Analytics categories are composed of rules. For each category, you
must create between 1 and 20 rules. Rules can include these parameters:
, , , and .

To update an existing category, see .

To learn more about Call Analytics categories, see [Creating categories
for post-call
transcriptions](https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html)
and [Creating categories for real-time
transcriptions](https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html).

### Usage

    transcribeservice_create_call_analytics_category(CategoryName, Rules,
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
id="transcribeservice_create_call_analytics_category_:_CategoryName">CategoryName</code></td>
<td><p>[required] A unique name, chosen by you, for your Call Analytics
category. It's helpful to use a detailed naming system that will make
sense to you in the future. For example, it's better to use
<code>sentiment-positive-last30seconds</code> for a category over a
generic name like <code>test-category</code>.</p>
<p>Category names are case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_create_call_analytics_category_:_Rules">Rules</code></td>
<td><p>[required] Rules define a Call Analytics category. When creating
a new category, you must create between 1 and 20 rules for that
category. For each rule, you specify a filter you want applied to the
attributes of a call. For example, you can choose a sentiment filter
that detects if a customer's sentiment was positive during the last 30
seconds of the call.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_create_call_analytics_category_:_InputType">InputType</code></td>
<td><p>Choose whether you want to create a real-time or a post-call
category for your Call Analytics transcription.</p>
<p>Specifying <code>POST_CALL</code> assigns your category to post-call
transcriptions; categories with this input type cannot be applied to
streaming (real-time) transcriptions.</p>
<p>Specifying <code>REAL_TIME</code> assigns your category to streaming
transcriptions; categories with this input type cannot be applied to
post-call transcriptions.</p>
<p>If you do not include <code>InputType</code>, your category is
created as a post-call category by default.</p></td>
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

    svc$create_call_analytics_category(
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
