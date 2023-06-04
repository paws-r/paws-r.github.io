<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_start_transcription_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Transcribes the audio from a media file and applies any additional Request Parameters you choose to include in your request

### Description

Transcribes the audio from a media file and applies any additional
Request Parameters you choose to include in your request.

To make a `start_transcription_job` request, you must first upload your
media file into an Amazon S3 bucket; you can then specify the Amazon S3
location of the file using the `Media` parameter.

You must include the following parameters in your
`start_transcription_job` request:

-   `region`: The Amazon Web Services Region where you are making your
    request. For a list of Amazon Web Services Regions supported with
    Amazon Transcribe, refer to [Amazon Transcribe endpoints and
    quotas](https://docs.aws.amazon.com/general/latest/gr/transcribe.html).

-   `TranscriptionJobName`: A custom name you create for your
    transcription job that is unique within your Amazon Web Services
    account.

-   `Media` (`MediaFileUri`): The Amazon S3 location of your media file.

-   One of `LanguageCode`, `IdentifyLanguage`, or
    `IdentifyMultipleLanguages`: If you know the language of your media
    file, specify it using the `LanguageCode` parameter; you can find
    all valid language codes in the [Supported
    languages](https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html)
    table. If you don't know the languages spoken in your media, use
    either `IdentifyLanguage` or `IdentifyMultipleLanguages` and let
    Amazon Transcribe identify the languages for you.

### Usage

    transcribeservice_start_transcription_job(TranscriptionJobName,
      LanguageCode, MediaSampleRateHertz, MediaFormat, Media,
      OutputBucketName, OutputKey, OutputEncryptionKMSKeyId,
      KMSEncryptionContext, Settings, ModelSettings, JobExecutionSettings,
      ContentRedaction, IdentifyLanguage, IdentifyMultipleLanguages,
      LanguageOptions, Subtitles, Tags, LanguageIdSettings)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_start_transcription_job_:_TranscriptionJobName">TranscriptionJobName</code></td>
<td><p>[required] A unique name, chosen by you, for your transcription
job. The name that you specify is also used as the default name of your
transcription output file. If you want to specify a different name for
your transcription output, use the <code>OutputKey</code> parameter.</p>
<p>This name is case sensitive, cannot contain spaces, and must be
unique within an Amazon Web Services account. If you try to create a new
job with the same name as an existing job, you get a
<code>ConflictException</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_transcription_job_:_LanguageCode">LanguageCode</code></td>
<td><p>The language code that represents the language spoken in the
input media file.</p>
<p>If you're unsure of the language spoken in your media file, consider
using <code>IdentifyLanguage</code> or
<code>IdentifyMultipleLanguages</code> to enable automatic language
identification.</p>
<p>Note that you must include one of <code>LanguageCode</code>,
<code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code>
in your request. If you include more than one of these parameters, your
transcription job fails.</p>
<p>For a list of supported languages and their associated language
codes, refer to the <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
languages</a> table.</p>
<p>To transcribe speech in Modern Standard Arabic (<code>ar-SA</code>),
your media file must be encoded at a sample rate of 16,000 Hz or
higher.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_transcription_job_:_MediaSampleRateHertz">MediaSampleRateHertz</code></td>
<td><p>The sample rate, in hertz, of the audio track in your input media
file.</p>
<p>If you don't specify the media sample rate, Amazon Transcribe
determines it for you. If you specify the sample rate, it must match the
rate detected by Amazon Transcribe. If there's a mismatch between the
value that you specify and the value detected, your job fails. In most
cases, you can omit <code>MediaSampleRateHertz</code> and let Amazon
Transcribe determine the sample rate.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_transcription_job_:_MediaFormat">MediaFormat</code></td>
<td><p>Specify the format of your input media file.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_transcription_job_:_Media">Media</code></td>
<td><p>[required] Describes the Amazon S3 location of the media file you
want to use in your request.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_transcription_job_:_OutputBucketName">OutputBucketName</code></td>
<td><p>The name of the Amazon S3 bucket where you want your
transcription output stored. Do not include the <code
style="white-space: pre;">⁠S3://⁠</code> prefix of the specified
bucket.</p>
<p>If you want your output to go to a sub-folder of this bucket, specify
it using the <code>OutputKey</code> parameter;
<code>OutputBucketName</code> only accepts the name of a bucket.</p>
<p>For example, if you want your output stored in <code
style="white-space: pre;">⁠S3://DOC-EXAMPLE-BUCKET⁠</code>, set
<code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code>.
However, if you want your output stored in <code
style="white-space: pre;">⁠S3://DOC-EXAMPLE-BUCKET/test-files/⁠</code>,
set <code>OutputBucketName</code> to <code>DOC-EXAMPLE-BUCKET</code> and
<code>OutputKey</code> to <code
style="white-space: pre;">⁠test-files/⁠</code>.</p>
<p>Note that Amazon Transcribe must have permission to use the specified
location. You can change Amazon S3 permissions using the <a
href="https://console.aws.amazon.com/s3/home">Amazon Web Services
Management Console</a>. See also <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/security_iam_id-based-policy-examples.html#auth-role-iam-user">Permissions
Required for IAM User Roles</a>.</p>
<p>If you don't specify <code>OutputBucketName</code>, your transcript
is placed in a service-managed Amazon S3 bucket and you are provided
with a URI to access your transcript.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_transcription_job_:_OutputKey">OutputKey</code></td>
<td><p>Use in combination with <code>OutputBucketName</code> to specify
the output location of your transcript and, optionally, a unique name
for your output file. The default name for your transcription output is
the same as the name you specified for your transcription job
(<code>TranscriptionJobName</code>).</p>
<p>Here are some examples of how you can use <code>OutputKey</code>:</p>
<ul>
<li><p>If you specify 'DOC-EXAMPLE-BUCKET' as the
<code>OutputBucketName</code> and 'my-transcript.json' as the
<code>OutputKey</code>, your transcription output path is <code
style="white-space: pre;">⁠s3://DOC-EXAMPLE-BUCKET/my-transcript.json⁠</code>.</p></li>
<li><p>If you specify 'my-first-transcription' as the
<code>TranscriptionJobName</code>, 'DOC-EXAMPLE-BUCKET' as the
<code>OutputBucketName</code>, and 'my-transcript' as the
<code>OutputKey</code>, your transcription output path is <code
style="white-space: pre;">⁠s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json⁠</code>.</p></li>
<li><p>If you specify 'DOC-EXAMPLE-BUCKET' as the
<code>OutputBucketName</code> and 'test-files/my-transcript.json' as the
<code>OutputKey</code>, your transcription output path is <code
style="white-space: pre;">⁠s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json⁠</code>.</p></li>
<li><p>If you specify 'my-first-transcription' as the
<code>TranscriptionJobName</code>, 'DOC-EXAMPLE-BUCKET' as the
<code>OutputBucketName</code>, and 'test-files/my-transcript' as the
<code>OutputKey</code>, your transcription output path is <code
style="white-space: pre;">⁠s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json⁠</code>.</p></li>
</ul>
<p>If you specify the name of an Amazon S3 bucket sub-folder that
doesn't exist, one is created for you.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_transcription_job_:_OutputEncryptionKMSKeyId">OutputEncryptionKMSKeyId</code></td>
<td><p>The KMS key you want to use to encrypt your transcription
output.</p>
<p>If using a key located in the <strong>current</strong> Amazon Web
Services account, you can specify your KMS key in one of four ways:</p>
<ol>
<li><p>Use the KMS key ID itself. For example, <code
style="white-space: pre;">⁠1234abcd-12ab-34cd-56ef-1234567890ab⁠</code>.</p></li>
<li><p>Use an alias for the KMS key ID. For example,
<code>alias/ExampleAlias</code>.</p></li>
<li><p>Use the Amazon Resource Name (ARN) for the KMS key ID. For
example, <code
style="white-space: pre;">⁠arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code>.</p></li>
<li><p>Use the ARN for the KMS key alias. For example,
<code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p></li>
</ol>
<p>If using a key located in a <strong>different</strong> Amazon Web
Services account than the current Amazon Web Services account, you can
specify your KMS key in one of two ways:</p>
<ol>
<li><p>Use the ARN for the KMS key ID. For example, <code
style="white-space: pre;">⁠arn:aws:kms:region:account-ID:key/1234abcd-12ab-34cd-56ef-1234567890ab⁠</code>.</p></li>
<li><p>Use the ARN for the KMS key alias. For example,
<code>arn:aws:kms:region:account-ID:alias/ExampleAlias</code>.</p></li>
</ol>
<p>If you don't specify an encryption key, your output is encrypted with
the default Amazon S3 key (SSE-S3).</p>
<p>If you specify a KMS key to encrypt your output, you must also
specify an output location using the <code>OutputLocation</code>
parameter.</p>
<p>Note that the role making the request must have permission to use the
specified KMS key.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_transcription_job_:_KMSEncryptionContext">KMSEncryptionContext</code></td>
<td><p>A map of plain text, non-secret key:value pairs, known as
encryption context pairs, that provide an added layer of security for
your data. For more information, see <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/#kms-context">KMS
encryption context</a> and <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/">Asymmetric keys
in KMS</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_transcription_job_:_Settings">Settings</code></td>
<td><p>Specify additional optional settings in your request, including
channel identification, alternative transcriptions, speaker
partitioning. You can use that to apply custom vocabularies and
vocabulary filters.</p>
<p>If you want to include a custom vocabulary or a custom vocabulary
filter (or both) with your request but <strong>do not</strong> want to
use automatic language identification, use <code>Settings</code> with
the <code>VocabularyName</code> or <code>VocabularyFilterName</code> (or
both) sub-parameter.</p>
<p>If you're using automatic language identification with your request
and want to include a custom language model, a custom vocabulary, or a
custom vocabulary filter, use instead the “ parameter with the
<code>LanguageModelName</code>, 'VocabularyName' or
'VocabularyFilterName' sub-parameters.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_transcription_job_:_ModelSettings">ModelSettings</code></td>
<td><p>Specify the custom language model you want to include with your
transcription job. If you include <code>ModelSettings</code> in your
request, you must include the <code>LanguageModelName</code>
sub-parameter.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/custom-language-models.html">Custom
language models</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_transcription_job_:_JobExecutionSettings">JobExecutionSettings</code></td>
<td><p>Makes it possible to control how your transcription job is
processed. Currently, the only <code>JobExecutionSettings</code>
modification you can choose is enabling job queueing using the
<code>AllowDeferredExecution</code> sub-parameter.</p>
<p>If you include <code>JobExecutionSettings</code> in your request, you
must also include the sub-parameters:
<code>AllowDeferredExecution</code> and
<code>DataAccessRoleArn</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_transcription_job_:_ContentRedaction">ContentRedaction</code></td>
<td><p>Makes it possible to redact or flag specified personally
identifiable information (PII) in your transcript. If you use
<code>ContentRedaction</code>, you must also include the sub-parameters:
<code>PiiEntityTypes</code>, <code>RedactionOutput</code>, and
<code>RedactionType</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_transcription_job_:_IdentifyLanguage">IdentifyLanguage</code></td>
<td><p>Enables automatic language identification in your transcription
job request. Use this parameter if your media file contains only one
language. If your media contains multiple languages, use
<code>IdentifyMultipleLanguages</code> instead.</p>
<p>If you include <code>IdentifyLanguage</code>, you can optionally
include a list of language codes, using <code>LanguageOptions</code>,
that you think may be present in your media file. Including
<code>LanguageOptions</code> restricts <code>IdentifyLanguage</code> to
only the language options that you specify, which can improve
transcription accuracy.</p>
<p>If you want to apply a custom language model, a custom vocabulary, or
a custom vocabulary filter to your automatic language identification
request, include <code>LanguageIdSettings</code> with the relevant
sub-parameters (<code>VocabularyName</code>,
<code>LanguageModelName</code>, and <code>VocabularyFilterName</code>).
If you include <code>LanguageIdSettings</code>, also include
<code>LanguageOptions</code>.</p>
<p>Note that you must include one of <code>LanguageCode</code>,
<code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code>
in your request. If you include more than one of these parameters, your
transcription job fails.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_transcription_job_:_IdentifyMultipleLanguages">IdentifyMultipleLanguages</code></td>
<td><p>Enables automatic multi-language identification in your
transcription job request. Use this parameter if your media file
contains more than one language. If your media contains only one
language, use <code>IdentifyLanguage</code> instead.</p>
<p>If you include <code>IdentifyMultipleLanguages</code>, you can
optionally include a list of language codes, using
<code>LanguageOptions</code>, that you think may be present in your
media file. Including <code>LanguageOptions</code> restricts
<code>IdentifyLanguage</code> to only the language options that you
specify, which can improve transcription accuracy.</p>
<p>If you want to apply a custom vocabulary or a custom vocabulary
filter to your automatic language identification request, include
<code>LanguageIdSettings</code> with the relevant sub-parameters
(<code>VocabularyName</code> and <code>VocabularyFilterName</code>). If
you include <code>LanguageIdSettings</code>, also include
<code>LanguageOptions</code>.</p>
<p>Note that you must include one of <code>LanguageCode</code>,
<code>IdentifyLanguage</code>, or <code>IdentifyMultipleLanguages</code>
in your request. If you include more than one of these parameters, your
transcription job fails.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_transcription_job_:_LanguageOptions">LanguageOptions</code></td>
<td><p>You can specify two or more language codes that represent the
languages you think may be present in your media. Including more than
five is not recommended. If you're unsure what languages are present, do
not include this parameter.</p>
<p>If you include <code>LanguageOptions</code> in your request, you must
also include <code>IdentifyLanguage</code>.</p>
<p>For more information, refer to <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/supported-languages.html">Supported
languages</a>.</p>
<p>To transcribe speech in Modern Standard Arabic (<code>ar-SA</code>),
your media file must be encoded at a sample rate of 16,000 Hz or
higher.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_transcription_job_:_Subtitles">Subtitles</code></td>
<td><p>Produces subtitle files for your input media. You can specify
WebVTT (<em>.vtt) and SubRip (</em>.srt) formats.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_transcription_job_:_Tags">Tags</code></td>
<td><p>Adds one or more custom tags, each in the form of a key:value
pair, to a new transcription job at the time you start this new job.</p>
<p>To learn more about using tags with Amazon Transcribe, refer to <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
resources</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_transcription_job_:_LanguageIdSettings">LanguageIdSettings</code></td>
<td><p>If using automatic language identification in your request and
you want to apply a custom language model, a custom vocabulary, or a
custom vocabulary filter, include <code>LanguageIdSettings</code> with
the relevant sub-parameters (<code>VocabularyName</code>,
<code>LanguageModelName</code>, and <code>VocabularyFilterName</code>).
Note that multi-language identification
(<code>IdentifyMultipleLanguages</code>) doesn't support custom language
models.</p>
<p><code>LanguageIdSettings</code> supports two to five language codes.
Each language code you include can have an associated custom language
model, custom vocabulary, and custom vocabulary filter. The language
codes that you specify must match the languages of the associated custom
language models, custom vocabularies, and custom vocabulary filters.</p>
<p>It's recommended that you include <code>LanguageOptions</code> when
using <code>LanguageIdSettings</code> to ensure that the correct
language dialect is identified. For example, if you specify a custom
vocabulary that is in <code>en-US</code> but Amazon Transcribe
determines that the language spoken in your media is <code>en-AU</code>,
your custom vocabulary <em>is not</em> applied to your transcription. If
you include <code>LanguageOptions</code> and include <code>en-US</code>
as the only English language dialect, your custom vocabulary <em>is</em>
applied to your transcription.</p>
<p>If you want to include a custom language model with your request but
<strong>do not</strong> want to use automatic language identification,
use instead the <code
style="white-space: pre;">⁠parameter with the `LanguageModelName` sub-parameter. If you want to include a custom vocabulary or a custom vocabulary filter (or both) with your request but **do not** want to use automatic language identification, use instead the⁠</code>
parameter with the <code>VocabularyName</code> or
<code>VocabularyFilterName</code> (or both) sub-parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TranscriptionJob = list(
        TranscriptionJobName = "string",
        TranscriptionJobStatus = "QUEUED"|"IN_PROGRESS"|"FAILED"|"COMPLETED",
        LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE",
        MediaSampleRateHertz = 123,
        MediaFormat = "mp3"|"mp4"|"wav"|"flac"|"ogg"|"amr"|"webm",
        Media = list(
          MediaFileUri = "string",
          RedactedMediaFileUri = "string"
        ),
        Transcript = list(
          TranscriptFileUri = "string",
          RedactedTranscriptFileUri = "string"
        ),
        StartTime = as.POSIXct(
          "2015-01-01"
        ),
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        CompletionTime = as.POSIXct(
          "2015-01-01"
        ),
        FailureReason = "string",
        Settings = list(
          VocabularyName = "string",
          ShowSpeakerLabels = TRUE|FALSE,
          MaxSpeakerLabels = 123,
          ChannelIdentification = TRUE|FALSE,
          ShowAlternatives = TRUE|FALSE,
          MaxAlternatives = 123,
          VocabularyFilterName = "string",
          VocabularyFilterMethod = "remove"|"mask"|"tag"
        ),
        ModelSettings = list(
          LanguageModelName = "string"
        ),
        JobExecutionSettings = list(
          AllowDeferredExecution = TRUE|FALSE,
          DataAccessRoleArn = "string"
        ),
        ContentRedaction = list(
          RedactionType = "PII",
          RedactionOutput = "redacted"|"redacted_and_unredacted",
          PiiEntityTypes = list(
            "BANK_ACCOUNT_NUMBER"|"BANK_ROUTING"|"CREDIT_DEBIT_NUMBER"|"CREDIT_DEBIT_CVV"|"CREDIT_DEBIT_EXPIRY"|"PIN"|"EMAIL"|"ADDRESS"|"NAME"|"PHONE"|"SSN"|"ALL"
          )
        ),
        IdentifyLanguage = TRUE|FALSE,
        IdentifyMultipleLanguages = TRUE|FALSE,
        LanguageOptions = list(
          "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE"
        ),
        IdentifiedLanguageScore = 123.0,
        LanguageCodes = list(
          list(
            LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE",
            DurationInSeconds = 123.0
          )
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        Subtitles = list(
          Formats = list(
            "vtt"|"srt"
          ),
          SubtitleFileUris = list(
            "string"
          ),
          OutputStartIndex = 123
        ),
        LanguageIdSettings = list(
          list(
            VocabularyName = "string",
            VocabularyFilterName = "string",
            LanguageModelName = "string"
          )
        )
      )
    )

### Request syntax

    svc$start_transcription_job(
      TranscriptionJobName = "string",
      LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE",
      MediaSampleRateHertz = 123,
      MediaFormat = "mp3"|"mp4"|"wav"|"flac"|"ogg"|"amr"|"webm",
      Media = list(
        MediaFileUri = "string",
        RedactedMediaFileUri = "string"
      ),
      OutputBucketName = "string",
      OutputKey = "string",
      OutputEncryptionKMSKeyId = "string",
      KMSEncryptionContext = list(
        "string"
      ),
      Settings = list(
        VocabularyName = "string",
        ShowSpeakerLabels = TRUE|FALSE,
        MaxSpeakerLabels = 123,
        ChannelIdentification = TRUE|FALSE,
        ShowAlternatives = TRUE|FALSE,
        MaxAlternatives = 123,
        VocabularyFilterName = "string",
        VocabularyFilterMethod = "remove"|"mask"|"tag"
      ),
      ModelSettings = list(
        LanguageModelName = "string"
      ),
      JobExecutionSettings = list(
        AllowDeferredExecution = TRUE|FALSE,
        DataAccessRoleArn = "string"
      ),
      ContentRedaction = list(
        RedactionType = "PII",
        RedactionOutput = "redacted"|"redacted_and_unredacted",
        PiiEntityTypes = list(
          "BANK_ACCOUNT_NUMBER"|"BANK_ROUTING"|"CREDIT_DEBIT_NUMBER"|"CREDIT_DEBIT_CVV"|"CREDIT_DEBIT_EXPIRY"|"PIN"|"EMAIL"|"ADDRESS"|"NAME"|"PHONE"|"SSN"|"ALL"
        )
      ),
      IdentifyLanguage = TRUE|FALSE,
      IdentifyMultipleLanguages = TRUE|FALSE,
      LanguageOptions = list(
        "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE"
      ),
      Subtitles = list(
        Formats = list(
          "vtt"|"srt"
        ),
        OutputStartIndex = 123
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      LanguageIdSettings = list(
        list(
          VocabularyName = "string",
          VocabularyFilterName = "string",
          LanguageModelName = "string"
        )
      )
    )
