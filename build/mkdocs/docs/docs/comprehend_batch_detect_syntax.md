<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_batch_detect_syntax</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Inspects the text of a batch of documents for the syntax and part of speech of the words in the document and returns information about them

### Description

Inspects the text of a batch of documents for the syntax and part of
speech of the words in the document and returns information about them.
For more information, see
[Syntax](https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html)
in the Comprehend Developer Guide.

### Usage

    comprehend_batch_detect_syntax(TextList, LanguageCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_batch_detect_syntax_:_TextList">TextList</code></td>
<td><p>[required] A list containing the UTF-8 encoded text of the input
documents. The list can contain a maximum of 25 documents. The maximum
size for each document is 5 KB.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_batch_detect_syntax_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language of the input documents. You can specify
any of the following languages supported by Amazon Comprehend: German
("de"), English ("en"), Spanish ("es"), French ("fr"), Italian ("it"),
or Portuguese ("pt"). All documents must be in the same
language.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResultList = list(
        list(
          Index = 123,
          SyntaxTokens = list(
            list(
              TokenId = 123,
              Text = "string",
              BeginOffset = 123,
              EndOffset = 123,
              PartOfSpeech = list(
                Tag = "ADJ"|"ADP"|"ADV"|"AUX"|"CONJ"|"CCONJ"|"DET"|"INTJ"|"NOUN"|"NUM"|"O"|"PART"|"PRON"|"PROPN"|"PUNCT"|"SCONJ"|"SYM"|"VERB",
                Score = 123.0
              )
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

    svc$batch_detect_syntax(
      TextList = list(
        "string"
      ),
      LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"
    )
