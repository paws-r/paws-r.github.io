<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_default_vocabularies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the default vocabularies for the specified Amazon Connect instance

### Description

Lists the default vocabularies for the specified Amazon Connect
instance.

### Usage

    connect_list_default_vocabularies(InstanceId, LanguageCode, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_default_vocabularies_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_default_vocabularies_:_LanguageCode">LanguageCode</code></td>
<td><p>The language code of the vocabulary entries. For a list of
languages and their corresponding language codes, see <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/what-is.html">What
is Amazon Transcribe?</a></p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_default_vocabularies_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_default_vocabularies_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DefaultVocabularyList = list(
        list(
          InstanceId = "string",
          LanguageCode = "ar-AE"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fr-CA"|"fr-FR"|"hi-IN"|"it-IT"|"ja-JP"|"ko-KR"|"pt-BR"|"pt-PT"|"zh-CN"|"en-NZ"|"en-ZA",
          VocabularyId = "string",
          VocabularyName = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_default_vocabularies(
      InstanceId = "string",
      LanguageCode = "ar-AE"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fr-CA"|"fr-FR"|"hi-IN"|"it-IT"|"ja-JP"|"ko-KR"|"pt-BR"|"pt-PT"|"zh-CN"|"en-NZ"|"en-ZA",
      MaxResults = 123,
      NextToken = "string"
    )
