<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_batch_detect_dominant_language</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Determines the dominant language of the input text for a batch of documents

### Description

Determines the dominant language of the input text for a batch of
documents. For a list of languages that Amazon Comprehend can detect,
see [Amazon Comprehend Supported
Languages](https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).

### Usage

    comprehend_batch_detect_dominant_language(TextList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_batch_detect_dominant_language_:_TextList">TextList</code></td>
<td><p>[required] A list containing the UTF-8 encoded text of the input
documents. The list can contain a maximum of 25 documents. Each document
should contain at least 20 characters. The maximum size of each document
is 5 KB.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResultList = list(
        list(
          Index = 123,
          Languages = list(
            list(
              LanguageCode = "string",
              Score = 123.0
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

    svc$batch_detect_dominant_language(
      TextList = list(
        "string"
      )
    )
