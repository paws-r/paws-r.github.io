<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_search_vocabularies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Searches for vocabularies within a specific Amazon Connect instance using State, NameStartsWith, and LanguageCode

### Description

Searches for vocabularies within a specific Amazon Connect instance
using `State`, `NameStartsWith`, and `LanguageCode`.

### Usage

    connect_search_vocabularies(InstanceId, MaxResults, NextToken, State,
      NameStartsWith, LanguageCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_search_vocabularies_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_search_vocabularies_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_search_vocabularies_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code id="connect_search_vocabularies_:_State">State</code></td>
<td><p>The current state of the custom vocabulary.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_search_vocabularies_:_NameStartsWith">NameStartsWith</code></td>
<td><p>The starting pattern of the name of the vocabulary.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_search_vocabularies_:_LanguageCode">LanguageCode</code></td>
<td><p>The language code of the vocabulary entries. For a list of
languages and their corresponding language codes, see <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/what-is.html">What
is Amazon Transcribe?</a></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VocabularySummaryList = list(
        list(
          Name = "string",
          Id = "string",
          Arn = "string",
          LanguageCode = "ar-AE"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fr-CA"|"fr-FR"|"hi-IN"|"it-IT"|"ja-JP"|"ko-KR"|"pt-BR"|"pt-PT"|"zh-CN"|"en-NZ"|"en-ZA",
          State = "CREATION_IN_PROGRESS"|"ACTIVE"|"CREATION_FAILED"|"DELETE_IN_PROGRESS",
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          FailureReason = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$search_vocabularies(
      InstanceId = "string",
      MaxResults = 123,
      NextToken = "string",
      State = "CREATION_IN_PROGRESS"|"ACTIVE"|"CREATION_FAILED"|"DELETE_IN_PROGRESS",
      NameStartsWith = "string",
      LanguageCode = "ar-AE"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fr-CA"|"fr-FR"|"hi-IN"|"it-IT"|"ja-JP"|"ko-KR"|"pt-BR"|"pt-PT"|"zh-CN"|"en-NZ"|"en-ZA"
    )
