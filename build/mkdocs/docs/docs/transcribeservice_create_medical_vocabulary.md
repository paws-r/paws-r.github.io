<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_create_medical_vocabulary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new custom medical vocabulary

### Description

Creates a new custom medical vocabulary.

Before creating a new custom medical vocabulary, you must first upload a
text file that contains your vocabulary table into an Amazon S3 bucket.
Note that this differs from , where you can include a list of terms
within your request using the `Phrases` flag;
`create_medical_vocabulary` does not support the `Phrases` flag and only
accepts vocabularies in table format.

Each language has a character set that contains all allowed characters
for that specific language. If you use unsupported characters, your
custom vocabulary request fails. Refer to [Character Sets for Custom
Vocabularies](https://docs.aws.amazon.com/transcribe/latest/dg/charsets.html)
to get the character set for your language.

For more information, see [Custom
vocabularies](https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html).

### Usage

    transcribeservice_create_medical_vocabulary(VocabularyName,
      LanguageCode, VocabularyFileUri, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_create_medical_vocabulary_:_VocabularyName">VocabularyName</code></td>
<td><p>[required] A unique name, chosen by you, for your new custom
medical vocabulary.</p>
<p>This name is case sensitive, cannot contain spaces, and must be
unique within an Amazon Web Services account. If you try to create a new
custom medical vocabulary with the same name as an existing custom
medical vocabulary, you get a <code>ConflictException</code>
error.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_create_medical_vocabulary_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language code that represents the language of the
entries in your custom vocabulary. US English (<code>en-US</code>) is
the only language supported with Amazon Transcribe Medical.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_create_medical_vocabulary_:_VocabularyFileUri">VocabularyFileUri</code></td>
<td><p>[required] The Amazon S3 location (URI) of the text file that
contains your custom medical vocabulary. The URI must be in the same
Amazon Web Services Region as the resource you're calling.</p>
<p>Here's an example URI path: <code
style="white-space: pre;">⁠s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt⁠</code></p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_create_medical_vocabulary_:_Tags">Tags</code></td>
<td><p>Adds one or more custom tags, each in the form of a key:value
pair, to a new custom medical vocabulary at the time you create this new
custom vocabulary.</p>
<p>To learn more about using tags with Amazon Transcribe, refer to <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VocabularyName = "string",
      LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE",
      VocabularyState = "PENDING"|"READY"|"FAILED",
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      FailureReason = "string"
    )

### Request syntax

    svc$create_medical_vocabulary(
      VocabularyName = "string",
      LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE",
      VocabularyFileUri = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
