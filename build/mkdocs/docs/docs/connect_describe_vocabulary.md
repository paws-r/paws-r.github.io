<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_vocabulary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified vocabulary

### Description

Describes the specified vocabulary.

### Usage

    connect_describe_vocabulary(InstanceId, VocabularyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_vocabulary_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_vocabulary_:_VocabularyId">VocabularyId</code></td>
<td><p>[required] The identifier of the custom vocabulary.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Vocabulary = list(
        Name = "string",
        Id = "string",
        Arn = "string",
        LanguageCode = "ar-AE"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fr-CA"|"fr-FR"|"hi-IN"|"it-IT"|"ja-JP"|"ko-KR"|"pt-BR"|"pt-PT"|"zh-CN"|"en-NZ"|"en-ZA",
        State = "CREATION_IN_PROGRESS"|"ACTIVE"|"CREATION_FAILED"|"DELETE_IN_PROGRESS",
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        FailureReason = "string",
        Content = "string",
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_vocabulary(
      InstanceId = "string",
      VocabularyId = "string"
    )
