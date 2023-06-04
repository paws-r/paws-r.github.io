<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_start_call_analytics_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Transcribes the audio from a customer service call and applies any additional Request Parameters you choose to include in your request

### Description

Transcribes the audio from a customer service call and applies any
additional Request Parameters you choose to include in your request.

In addition to many standard transcription features, Call Analytics
provides you with call characteristics, call summarization, speaker
sentiment, and optional redaction of your text transcript and your audio
file. You can also apply custom categories to flag specified conditions.
To learn more about these features and insights, refer to [Analyzing
call center audio with Call
Analytics](https://docs.aws.amazon.com/transcribe/latest/dg/call-analytics.html).

If you want to apply categories to your Call Analytics job, you must
create them before submitting your job request. Categories cannot be
retroactively applied to a job. To create a new category, use the
operation. To learn more about Call Analytics categories, see [Creating
categories for post-call
transcriptions](https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-batch.html)
and [Creating categories for real-time
transcriptions](https://docs.aws.amazon.com/transcribe/latest/dg/tca-categories-stream.html).

To make a `start_call_analytics_job` request, you must first upload your
media file into an Amazon S3 bucket; you can then specify the Amazon S3
location of the file using the `Media` parameter.

Note that job queuing is enabled by default for Call Analytics jobs.

You must include the following parameters in your
`start_call_analytics_job` request:

-   `region`: The Amazon Web Services Region where you are making your
    request. For a list of Amazon Web Services Regions supported with
    Amazon Transcribe, refer to [Amazon Transcribe endpoints and
    quotas](https://docs.aws.amazon.com/general/latest/gr/transcribe.html).

-   `CallAnalyticsJobName`: A custom name that you create for your
    transcription job that's unique within your Amazon Web Services
    account.

-   `DataAccessRoleArn`: The Amazon Resource Name (ARN) of an IAM role
    that has permissions to access the Amazon S3 bucket that contains
    your input files.

-   `Media` (`MediaFileUri` or `RedactedMediaFileUri`): The Amazon S3
    location of your media file.

With Call Analytics, you can redact the audio contained in your media
file by including `RedactedMediaFileUri`, instead of `MediaFileUri`, to
specify the location of your input audio. If you choose to redact your
audio, you can find your redacted media at the location specified in the
`RedactedMediaFileUri` field of your response.

### Usage

    transcribeservice_start_call_analytics_job(CallAnalyticsJobName, Media,
      OutputLocation, OutputEncryptionKMSKeyId, DataAccessRoleArn, Settings,
      ChannelDefinitions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_start_call_analytics_job_:_CallAnalyticsJobName">CallAnalyticsJobName</code></td>
<td><p>[required] A unique name, chosen by you, for your Call Analytics
job.</p>
<p>This name is case sensitive, cannot contain spaces, and must be
unique within an Amazon Web Services account. If you try to create a new
job with the same name as an existing job, you get a
<code>ConflictException</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_call_analytics_job_:_Media">Media</code></td>
<td><p>[required] Describes the Amazon S3 location of the media file you
want to use in your Call Analytics request.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_call_analytics_job_:_OutputLocation">OutputLocation</code></td>
<td><p>The Amazon S3 location where you want your Call Analytics
transcription output stored. You can use any of the following formats to
specify the output location:</p>
<ol>
<li><p>s3://DOC-EXAMPLE-BUCKET</p></li>
<li><p>s3://DOC-EXAMPLE-BUCKET/my-output-folder/</p></li>
<li><p>s3://DOC-EXAMPLE-BUCKET/my-output-folder/my-call-analytics-job.json</p></li>
</ol>
<p>Unless you specify a file name (option 3), the name of your output
file has a default value that matches the name you specified for your
transcription job using the <code>CallAnalyticsJobName</code>
parameter.</p>
<p>You can specify a KMS key to encrypt your output using the
<code>OutputEncryptionKMSKeyId</code> parameter. If you don't specify a
KMS key, Amazon Transcribe uses the default Amazon S3 key for
server-side encryption.</p>
<p>If you don't specify <code>OutputLocation</code>, your transcript is
placed in a service-managed Amazon S3 bucket and you are provided with a
URI to access your transcript.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_call_analytics_job_:_OutputEncryptionKMSKeyId">OutputEncryptionKMSKeyId</code></td>
<td><p>The KMS key you want to use to encrypt your Call Analytics
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
id="transcribeservice_start_call_analytics_job_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an IAM role that has
permissions to access the Amazon S3 bucket that contains your input
files. If the role that you specify doesn’t have the appropriate
permissions to access the specified Amazon S3 location, your request
fails.</p>
<p>IAM role ARNs have the format
<code>arn:partition:iam::account:role/role-name-with-path</code>. For
example: <code
style="white-space: pre;">⁠arn:aws:iam::111122223333:role/Admin⁠</code>.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns">IAM
ARNs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_call_analytics_job_:_Settings">Settings</code></td>
<td><p>Specify additional optional settings in your request, including
content redaction; allows you to apply custom language models,
vocabulary filters, and custom vocabularies to your Call Analytics
job.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_call_analytics_job_:_ChannelDefinitions">ChannelDefinitions</code></td>
<td><p>Makes it possible to specify which speaker is on which channel.
For example, if your agent is the first participant to speak, you would
set <code>ChannelId</code> to <code>0</code> (to indicate the first
channel) and <code>ParticipantRole</code> to <code>AGENT</code> (to
indicate that it's the agent speaking).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CallAnalyticsJob = list(
        CallAnalyticsJobName = "string",
        CallAnalyticsJobStatus = "QUEUED"|"IN_PROGRESS"|"FAILED"|"COMPLETED",
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
        DataAccessRoleArn = "string",
        IdentifiedLanguageScore = 123.0,
        Settings = list(
          VocabularyName = "string",
          VocabularyFilterName = "string",
          VocabularyFilterMethod = "remove"|"mask"|"tag",
          LanguageModelName = "string",
          ContentRedaction = list(
            RedactionType = "PII",
            RedactionOutput = "redacted"|"redacted_and_unredacted",
            PiiEntityTypes = list(
              "BANK_ACCOUNT_NUMBER"|"BANK_ROUTING"|"CREDIT_DEBIT_NUMBER"|"CREDIT_DEBIT_CVV"|"CREDIT_DEBIT_EXPIRY"|"PIN"|"EMAIL"|"ADDRESS"|"NAME"|"PHONE"|"SSN"|"ALL"
            )
          ),
          LanguageOptions = list(
            "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE"
          ),
          LanguageIdSettings = list(
            list(
              VocabularyName = "string",
              VocabularyFilterName = "string",
              LanguageModelName = "string"
            )
          )
        ),
        ChannelDefinitions = list(
          list(
            ChannelId = 123,
            ParticipantRole = "AGENT"|"CUSTOMER"
          )
        )
      )
    )

### Request syntax

    svc$start_call_analytics_job(
      CallAnalyticsJobName = "string",
      Media = list(
        MediaFileUri = "string",
        RedactedMediaFileUri = "string"
      ),
      OutputLocation = "string",
      OutputEncryptionKMSKeyId = "string",
      DataAccessRoleArn = "string",
      Settings = list(
        VocabularyName = "string",
        VocabularyFilterName = "string",
        VocabularyFilterMethod = "remove"|"mask"|"tag",
        LanguageModelName = "string",
        ContentRedaction = list(
          RedactionType = "PII",
          RedactionOutput = "redacted"|"redacted_and_unredacted",
          PiiEntityTypes = list(
            "BANK_ACCOUNT_NUMBER"|"BANK_ROUTING"|"CREDIT_DEBIT_NUMBER"|"CREDIT_DEBIT_CVV"|"CREDIT_DEBIT_EXPIRY"|"PIN"|"EMAIL"|"ADDRESS"|"NAME"|"PHONE"|"SSN"|"ALL"
          )
        ),
        LanguageOptions = list(
          "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE"
        ),
        LanguageIdSettings = list(
          list(
            VocabularyName = "string",
            VocabularyFilterName = "string",
            LanguageModelName = "string"
          )
        )
      ),
      ChannelDefinitions = list(
        list(
          ChannelId = 123,
          ParticipantRole = "AGENT"|"CUSTOMER"
        )
      )
    )
