<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_translate_text</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Translates input text from the source language to the target language

### Description

Translates input text from the source language to the target language.
For a list of available languages and language codes, see [Supported
languages](https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html).

### Usage

    translate_translate_text(Text, TerminologyNames, SourceLanguageCode,
      TargetLanguageCode, Settings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="translate_translate_text_:_Text">Text</code></td>
<td><p>[required] The text to translate. The text string can be a
maximum of 10,000 bytes long. Depending on your character set, this may
be fewer than 10,000 characters.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_translate_text_:_TerminologyNames">TerminologyNames</code></td>
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
id="translate_translate_text_:_SourceLanguageCode">SourceLanguageCode</code></td>
<td><p>[required] The language code for the language of the source text.
For a list of language codes, see <a
href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported
languages</a>.</p>
<p>To have Amazon Translate determine the source language of your text,
you can specify <code>auto</code> in the <code>SourceLanguageCode</code>
field. If you specify <code>auto</code>, Amazon Translate will call <a
href="https://docs.aws.amazon.com/comprehend/latest/dg/what-is.html">Amazon
Comprehend</a> to determine the source language.</p>
<p>If you specify <code>auto</code>, you must send the
<code>translate_text</code> request in a region that supports Amazon
Comprehend. Otherwise, the request returns an error indicating that
autodetect is not supported.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_translate_text_:_TargetLanguageCode">TargetLanguageCode</code></td>
<td><p>[required] The language code requested for the language of the
target text. For a list of language codes, see <a
href="https://docs.aws.amazon.com/translate/latest/dg/what-is-languages.html">Supported
languages</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="translate_translate_text_:_Settings">Settings</code></td>
<td><p>Settings to configure your translation output, including the
option to set the formality level of the output text and the option to
mask profane words and phrases.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TranslatedText = "string",
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

    svc$translate_text(
      Text = "string",
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
