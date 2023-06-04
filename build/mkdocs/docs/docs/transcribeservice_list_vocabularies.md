<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_list_vocabularies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a list of custom vocabularies that match the specified criteria

### Description

Provides a list of custom vocabularies that match the specified
criteria. If no criteria are specified, all custom vocabularies are
returned.

To get detailed information about a specific custom vocabulary, use the
operation.

### Usage

    transcribeservice_list_vocabularies(NextToken, MaxResults, StateEquals,
      NameContains)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_list_vocabularies_:_NextToken">NextToken</code></td>
<td><p>If your <code>list_vocabularies</code> request returns more
results than can be displayed, <code>NextToken</code> is displayed in
the response with an associated string. To get the next page of results,
copy this string and repeat your request, including
<code>NextToken</code> with the value of the copied string. Repeat as
needed to view all your results.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_list_vocabularies_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of custom vocabularies to return in each page
of results. If there are fewer results than the value that you specify,
only the actual results are returned. If you don't specify a value, a
default of 5 is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_list_vocabularies_:_StateEquals">StateEquals</code></td>
<td><p>Returns only custom vocabularies with the specified state.
Vocabularies are ordered by creation date, with the newest vocabulary
first. If you don't include <code>StateEquals</code>, all custom medical
vocabularies are returned.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_list_vocabularies_:_NameContains">NameContains</code></td>
<td><p>Returns only the custom vocabularies that contain the specified
string. The search is not case sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = "PENDING"|"READY"|"FAILED",
      NextToken = "string",
      Vocabularies = list(
        list(
          VocabularyName = "string",
          LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE",
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          VocabularyState = "PENDING"|"READY"|"FAILED"
        )
      )
    )

### Request syntax

    svc$list_vocabularies(
      NextToken = "string",
      MaxResults = 123,
      StateEquals = "PENDING"|"READY"|"FAILED",
      NameContains = "string"
    )
