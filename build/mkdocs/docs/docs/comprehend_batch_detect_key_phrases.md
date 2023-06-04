<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_batch_detect_key_phrases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects the key noun phrases found in a batch of documents

### Description

Detects the key noun phrases found in a batch of documents.

### Usage

    comprehend_batch_detect_key_phrases(TextList, LanguageCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_batch_detect_key_phrases_:_TextList">TextList</code></td>
<td><p>[required] A list containing the UTF-8 encoded text of the input
documents. The list can contain a maximum of 25 documents. The maximum
size of each document is 5 KB.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_batch_detect_key_phrases_:_LanguageCode">LanguageCode</code></td>
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
          KeyPhrases = list(
            list(
              Score = 123.0,
              Text = "string",
              BeginOffset = 123,
              EndOffset = 123
            )
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

    svc$batch_detect_key_phrases(
      TextList = list(
        "string"
      ),
      LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW"
    )
