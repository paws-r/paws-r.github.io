<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_get_medical_vocabulary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the specified custom medical vocabulary

### Description

Provides information about the specified custom medical vocabulary.

To view the status of the specified custom medical vocabulary, check the
`VocabularyState` field. If the status is `READY`, your custom
vocabulary is available to use. If the status is `FAILED`,
`FailureReason` provides details on why your vocabulary failed.

To get a list of your custom medical vocabularies, use the operation.

### Usage

    transcribeservice_get_medical_vocabulary(VocabularyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_get_medical_vocabulary_:_VocabularyName">VocabularyName</code></td>
<td><p>[required] The name of the custom medical vocabulary you want
information about. Custom medical vocabulary names are case
sensitive.</p></td>
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
      FailureReason = "string",
      DownloadUri = "string"
    )

### Request syntax

    svc$get_medical_vocabulary(
      VocabularyName = "string"
    )
