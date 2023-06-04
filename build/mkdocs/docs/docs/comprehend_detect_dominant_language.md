<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_detect_dominant_language</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Determines the dominant language of the input text

### Description

Determines the dominant language of the input text. For a list of
languages that Amazon Comprehend can detect, see [Amazon Comprehend
Supported
Languages](https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).

### Usage

    comprehend_detect_dominant_language(Text)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_detect_dominant_language_:_Text">Text</code></td>
<td><p>[required] A UTF-8 text string. The string must contain at least
20 characters. The maximum string size is 100 KB.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Languages = list(
        list(
          LanguageCode = "string",
          Score = 123.0
        )
      )
    )

### Request syntax

    svc$detect_dominant_language(
      Text = "string"
    )
