<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_vocabulary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a custom vocabulary associated with your Amazon Connect instance

### Description

Creates a custom vocabulary associated with your Amazon Connect
instance. You can set a custom vocabulary to be your default vocabulary
for a given language. Contact Lens for Amazon Connect uses the default
vocabulary in post-call and real-time contact analysis sessions for that
language.

### Usage

    connect_create_vocabulary(ClientToken, InstanceId, VocabularyName,
      LanguageCode, Content, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_vocabulary_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>. If a create request is received
more than once with same client token, subsequent requests return the
previous response without creating a vocabulary again.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_vocabulary_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_vocabulary_:_VocabularyName">VocabularyName</code></td>
<td><p>[required] A unique name of the custom vocabulary.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_vocabulary_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language code of the vocabulary entries. For a
list of languages and their corresponding language codes, see <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/what-is.html">What
is Amazon Transcribe?</a></p></td>
</tr>
<tr class="odd">
<td><code id="connect_create_vocabulary_:_Content">Content</code></td>
<td><p>[required] The content of the custom vocabulary in plain-text
format with a table of values. Each row in the table represents a word
or a phrase, described with <code>Phrase</code>, <code>IPA</code>,
<code>SoundsLike</code>, and <code>DisplayAs</code> fields. Separate the
fields with TAB characters. The size limit is 50KB. For more
information, see <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-vocabulary.html#create-vocabulary-table">Create
a custom vocabulary using a table</a>.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_vocabulary_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      VocabularyArn = "string",
      VocabularyId = "string",
      State = "CREATION_IN_PROGRESS"|"ACTIVE"|"CREATION_FAILED"|"DELETE_IN_PROGRESS"
    )

### Request syntax

    svc$create_vocabulary(
      ClientToken = "string",
      InstanceId = "string",
      VocabularyName = "string",
      LanguageCode = "ar-AE"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fr-CA"|"fr-FR"|"hi-IN"|"it-IT"|"ja-JP"|"ko-KR"|"pt-BR"|"pt-PT"|"zh-CN"|"en-NZ"|"en-ZA",
      Content = "string",
      Tags = list(
        "string"
      )
    )
