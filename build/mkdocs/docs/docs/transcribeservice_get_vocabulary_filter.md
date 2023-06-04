<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_get_vocabulary_filter</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the specified custom vocabulary filter

### Description

Provides information about the specified custom vocabulary filter.

To get a list of your custom vocabulary filters, use the operation.

### Usage

    transcribeservice_get_vocabulary_filter(VocabularyFilterName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_get_vocabulary_filter_:_VocabularyFilterName">VocabularyFilterName</code></td>
<td><p>[required] The name of the custom vocabulary filter you want
information about. Custom vocabulary filter names are case
sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VocabularyFilterName = "string",
      LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE",
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      DownloadUri = "string"
    )

### Request syntax

    svc$get_vocabulary_filter(
      VocabularyFilterName = "string"
    )
