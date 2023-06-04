<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_detect_syntax</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Inspects text for syntax and the part of speech of words in the document

### Description

Inspects text for syntax and the part of speech of words in the
document. For more information, see
[Syntax](https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html)
in the Comprehend Developer Guide.

### Usage

    comprehend_detect_syntax(Text, LanguageCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehend_detect_syntax_:_Text">Text</code></td>
<td><p>[required] A UTF-8 string. The maximum string size is 5
KB.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_detect_syntax_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language code of the input documents. You can
specify any of the following languages supported by Amazon Comprehend:
German ("de"), English ("en"), Spanish ("es"), French ("fr"), Italian
("it"), or Portuguese ("pt").</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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

### Request syntax

    svc$detect_syntax(
      Text = "string",
      LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"
    )
