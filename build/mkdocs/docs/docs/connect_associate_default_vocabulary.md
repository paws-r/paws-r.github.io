<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_associate_default_vocabulary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an existing vocabulary as the default

### Description

Associates an existing vocabulary as the default. Contact Lens for
Amazon Connect uses the vocabulary in post-call and real-time analysis
sessions for the given language.

### Usage

    connect_associate_default_vocabulary(InstanceId, LanguageCode,
      VocabularyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_associate_default_vocabulary_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_associate_default_vocabulary_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language code of the vocabulary entries. For a
list of languages and their corresponding language codes, see <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/what-is.html">What
is Amazon Transcribe?</a></p></td>
</tr>
<tr class="odd">
<td><code
id="connect_associate_default_vocabulary_:_VocabularyId">VocabularyId</code></td>
<td><p>The identifier of the custom vocabulary. If this is empty, the
default is set to none.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_default_vocabulary(
      InstanceId = "string",
      LanguageCode = "ar-AE"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fr-CA"|"fr-FR"|"hi-IN"|"it-IT"|"ja-JP"|"ko-KR"|"pt-BR"|"pt-PT"|"zh-CN"|"en-NZ"|"en-ZA",
      VocabularyId = "string"
    )
