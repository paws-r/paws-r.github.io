<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_detect_sentiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Inspects text and returns an inference of the prevailing sentiment (POSITIVE, NEUTRAL, MIXED, or NEGATIVE)

### Description

Inspects text and returns an inference of the prevailing sentiment
(`POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`).

### Usage

    comprehend_detect_sentiment(Text, LanguageCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehend_detect_sentiment_:_Text">Text</code></td>
<td><p>[required] A UTF-8 text string. The maximum string size is 5
KB.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_detect_sentiment_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language of the input documents. You can specify
any of the primary languages supported by Amazon Comprehend. All
documents must be in the same language.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Sentiment = "POSITIVE"|"NEGATIVE"|"NEUTRAL"|"MIXED",
      SentimentScore = list(
        Positive = 123.0,
        Negative = 123.0,
        Neutral = 123.0,
        Mixed = 123.0
      )
    )

### Request syntax

    svc$detect_sentiment(
      Text = "string",
      LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW"
    )
