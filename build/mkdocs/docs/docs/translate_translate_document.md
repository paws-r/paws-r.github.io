<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_translate_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Translates the input document from the source language to the target language

### Description

Translates the input document from the source language to the target
language. This synchronous operation supports plain text or HTML for the
input document. `translate_document` supports translations from English
to any supported language, and from any supported language to English.
Therefore, specify either the source language code or the target
language code as “en” (English).

`translate_document` does not support language auto-detection.

If you set the `Formality` parameter, the request will fail if the
target language does not support formality. For a list of target
languages that support formality, see [Setting
formality](https://docs.aws.amazon.com/translate/latest/dg/customizing-translations-formality.html).

### Usage

    translate_translate_document(Document, TerminologyNames,
      SourceLanguageCode, TargetLanguageCode, Settings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="translate_translate_document_:_Document">Document</code></td>
<td><p>[required] The content and content type for the document to be
translated. The document size must not exceed 100 KB.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_translate_document_:_TerminologyNames">TerminologyNames</code></td>
<td><p>The name of a terminology list file to add to the translation
job. This file provides source terms and the desired translation for
each term. A terminology list can contain a maximum of 256 terms. You
can use one custom terminology resource in your translation request.</p>
<p>Use the <code>list_terminologies</code> operation to get the
available terminology lists.</p>
<p>For more information about custom terminology lists, see <a
href="https://docs.aws.amazon.com/translate/latest/dg/how-custom-terminology.html">Custom
terminology</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="translate_translate_document_:_SourceLanguageCode">SourceLanguageCode</code></td>
<td><p>[required] The language code for the language of the source text.
Do not use <code>auto</code>, because <code>translate_document</code>
does not support language auto-detection. For a list of supported
language codes, see <a
href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_translate_document_:_TargetLanguageCode">TargetLanguageCode</code></td>
<td><p>[required] The language code requested for the translated
document. For a list of supported language codes, see <a
href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="translate_translate_document_:_Settings">Settings</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TranslatedDocument = list(
        Content = raw
      ),
      SourceLanguageCode = "string",
      TargetLanguageCode = "string",
      AppliedTerminologies = list(
        list(
          Name = "string",
          Terms = list(
            list(
              SourceText = "string",
              TargetText = "string"
            )
          )
        )
      ),
      AppliedSettings = list(
        Formality = "FORMAL"|"INFORMAL",
        Profanity = "MASK"
      )
    )

### Request syntax

    svc$translate_document(
      Document = list(
        Content = raw,
        ContentType = "string"
      ),
      TerminologyNames = list(
        "string"
      ),
      SourceLanguageCode = "string",
      TargetLanguageCode = "string",
      Settings = list(
        Formality = "FORMAL"|"INFORMAL",
        Profanity = "MASK"
      )
    )
