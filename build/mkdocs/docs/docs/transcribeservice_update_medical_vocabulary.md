<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_update_medical_vocabulary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing custom medical vocabulary with new values

### Description

Updates an existing custom medical vocabulary with new values. This
operation overwrites all existing information with your new values; you
cannot append new terms onto an existing custom vocabulary.

### Usage

    transcribeservice_update_medical_vocabulary(VocabularyName,
      LanguageCode, VocabularyFileUri)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_update_medical_vocabulary_:_VocabularyName">VocabularyName</code></td>
<td><p>[required] The name of the custom medical vocabulary you want to
update. Custom medical vocabulary names are case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_update_medical_vocabulary_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language code that represents the language of the
entries in the custom vocabulary you want to update. US English
(<code>en-US</code>) is the only language supported with Amazon
Transcribe Medical.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_update_medical_vocabulary_:_VocabularyFileUri">VocabularyFileUri</code></td>
<td><p>[required] The Amazon S3 location of the text file that contains
your custom medical vocabulary. The URI must be located in the same
Amazon Web Services Region as the resource you're calling.</p>
<p>Here's an example URI path: <code
style="white-space: pre;">⁠s3://DOC-EXAMPLE-BUCKET/my-vocab-file.txt⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VocabularyName = "string",
      LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE",
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      VocabularyState = "PENDING"|"READY"|"FAILED"
    )

### Request syntax

    svc$update_medical_vocabulary(
      VocabularyName = "string",
      LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE",
      VocabularyFileUri = "string"
    )
