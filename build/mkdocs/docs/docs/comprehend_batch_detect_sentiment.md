<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_batch_detect_sentiment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Inspects a batch of documents and returns an inference of the prevailing sentiment, POSITIVE, NEUTRAL, MIXED, or NEGATIVE, in each one

### Description

Inspects a batch of documents and returns an inference of the prevailing
sentiment, `POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`, in each one.

### Usage

    comprehend_batch_detect_sentiment(TextList, LanguageCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_batch_detect_sentiment_:_TextList">TextList</code></td>
<td><p>[required] A list containing the UTF-8 encoded text of the input
documents. The list can contain a maximum of 25 documents. The maximum
size of each document is 5 KB.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_batch_detect_sentiment_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language of the input documents. You can specify
any of the primary languages supported by Amazon Comprehend. All
documents must be in the same language.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResultList = list(
        list(
          Index = 123,
          Sentiment = "POSITIVE"|"NEGATIVE"|"NEUTRAL"|"MIXED",
          SentimentScore = list(
            Positive = 123.0,
            Negative = 123.0,
            Neutral = 123.0,
            Mixed = 123.0
          )
        )
      ),
      ErrorList = list(
        list(
          Index = 123,
          ErrorCode = "string",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_detect_sentiment(
      TextList = list(
        "string"
      ),
      LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW"
    )
