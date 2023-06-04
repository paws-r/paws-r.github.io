<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_detect_targeted_sentiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Inspects the input text and returns a sentiment analysis for each entity identified in the text

### Description

Inspects the input text and returns a sentiment analysis for each entity
identified in the text.

For more information about targeted sentiment, see [Targeted
sentiment](https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html).

### Usage

    comprehend_detect_targeted_sentiment(Text, LanguageCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_detect_targeted_sentiment_:_Text">Text</code></td>
<td><p>[required] A UTF-8 text string. The maximum string length is 5
KB.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_detect_targeted_sentiment_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language of the input documents. Currently,
English is the only supported language.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entities = list(
        list(
          DescriptiveMentionIndex = list(
            123
          ),
          Mentions = list(
            list(
              Score = 123.0,
              GroupScore = 123.0,
              Text = "string",
              Type = "PERSON"|"LOCATION"|"ORGANIZATION"|"FACILITY"|"BRAND"|"COMMERCIAL_ITEM"|"MOVIE"|"MUSIC"|"BOOK"|"SOFTWARE"|"GAME"|"PERSONAL_TITLE"|"EVENT"|"DATE"|"QUANTITY"|"ATTRIBUTE"|"OTHER",
              MentionSentiment = list(
                Sentiment = "POSITIVE"|"NEGATIVE"|"NEUTRAL"|"MIXED",
                SentimentScore = list(
                  Positive = 123.0,
                  Negative = 123.0,
                  Neutral = 123.0,
                  Mixed = 123.0
                )
              ),
              BeginOffset = 123,
              EndOffset = 123
            )
          )
        )
      )
    )

### Request syntax

    svc$detect_targeted_sentiment(
      Text = "string",
      LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW"
    )
