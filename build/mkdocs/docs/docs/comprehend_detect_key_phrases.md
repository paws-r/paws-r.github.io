<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_detect_key_phrases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects the key noun phrases found in the text

### Description

Detects the key noun phrases found in the text.

### Usage

    comprehend_detect_key_phrases(Text, LanguageCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehend_detect_key_phrases_:_Text">Text</code></td>
<td><p>[required] A UTF-8 text string. The string must contain less than
100 KB of UTF-8 encoded characters.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_detect_key_phrases_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language of the input documents. You can specify
any of the primary languages supported by Amazon Comprehend. All
documents must be in the same language.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      KeyPhrases = list(
        list(
          Score = 123.0,
          Text = "string",
          BeginOffset = 123,
          EndOffset = 123
        )
      )
    )

### Request syntax

    svc$detect_key_phrases(
      Text = "string",
      LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW"
    )
