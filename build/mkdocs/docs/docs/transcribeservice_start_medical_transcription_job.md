<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_start_medical_transcription_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Transcribes the audio from a medical dictation or conversation and applies any additional Request Parameters you choose to include in your request

### Description

Transcribes the audio from a medical dictation or conversation and
applies any additional Request Parameters you choose to include in your
request.

In addition to many standard transcription features, Amazon Transcribe
Medical provides you with a robust medical vocabulary and, optionally,
content identification, which adds flags to personal health information
(PHI). To learn more about these features, refer to [How Amazon
Transcribe Medical
works](https://docs.aws.amazon.com/transcribe/latest/dg/how-it-works-med.html).

To make a `start_medical_transcription_job` request, you must first
upload your media file into an Amazon S3 bucket; you can then specify
the S3 location of the file using the `Media` parameter.

You must include the following parameters in your
`start_medical_transcription_job` request:

-   `region`: The Amazon Web Services Region where you are making your
    request. For a list of Amazon Web Services Regions supported with
    Amazon Transcribe, refer to [Amazon Transcribe endpoints and
    quotas](https://docs.aws.amazon.com/general/latest/gr/transcribe.html).

-   `MedicalTranscriptionJobName`: A custom name you create for your
    transcription job that is unique within your Amazon Web Services
    account.

-   `Media` (`MediaFileUri`): The Amazon S3 location of your media file.

-   `LanguageCode`: This must be `en-US`.

-   `OutputBucketName`: The Amazon S3 bucket where you want your
    transcript stored. If you want your output stored in a sub-folder of
    this bucket, you must also include `OutputKey`.

-   `Specialty`: This must be `PRIMARYCARE`.

-   `Type`: Choose whether your audio is a conversation or a dictation.

### Usage

    transcribeservice_start_medical_transcription_job(
      MedicalTranscriptionJobName, LanguageCode, MediaSampleRateHertz,
      MediaFormat, Media, OutputBucketName, OutputKey,
      OutputEncryptionKMSKeyId, KMSEncryptionContext, Settings,
      ContentIdentificationType, Specialty, Type, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_start_medical_transcription_job_:_MedicalTranscriptionJobName">MedicalTranscriptionJobName</code></td>
<td><p>[required] A unique name, chosen by you, for your medical
transcription job. The name that you specify is also used as the default
name of your transcription output file. If you want to specify a
different name for your transcription output, use the
<code>OutputKey</code> parameter.</p>
<p>This name is case sensitive, cannot contain spaces, and must be
unique within an Amazon Web Services account. If you try to create a new
job with the same name as an existing job, you get a
<code>ConflictException</code> error.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_medical_transcription_job_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language code that represents the language spoken
in the input media file. US English (<code>en-US</code>) is the only
valid value for medical transcription jobs. Any other value you enter
for language code results in a <code>BadRequestException</code>
error.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_medical_transcription_job_:_MediaSampleRateHertz">MediaSampleRateHertz</code></td>
<td><p>The sample rate, in hertz, of the audio track in your input media
file.</p>
<p>If you don't specify the media sample rate, Amazon Transcribe Medical
determines it for you. If you specify the sample rate, it must match the
rate detected by Amazon Transcribe Medical; if there's a mismatch
between the value that you specify and the value detected, your job
fails. Therefore, in most cases, it's advised to omit
<code>MediaSampleRateHertz</code> and let Amazon Transcribe Medical
determine the sample rate.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_medical_transcription_job_:_MediaFormat">MediaFormat</code></td>
<td><p>Specify the format of your input media file.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_medical_transcription_job_:_Media">Media</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_medical_transcription_job_:_OutputBucketName">OutputBucketName</code></td>
<td><p>[required] The name of the Amazon S3 bucket where you want your
medical transcription output stored. Do not include the <code
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
Required for IAM User Roles</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_medical_transcription_job_:_OutputKey">OutputKey</code></td>
<td><p>Use in combination with <code>OutputBucketName</code> to specify
the output location of your transcript and, optionally, a unique name
for your output file. The default name for your transcription output is
the same as the name you specified for your medical transcription job
(<code>MedicalTranscriptionJobName</code>).</p>
<p>Here are some examples of how you can use <code>OutputKey</code>:</p>
<ul>
<li><p>If you specify 'DOC-EXAMPLE-BUCKET' as the
<code>OutputBucketName</code> and 'my-transcript.json' as the
<code>OutputKey</code>, your transcription output path is <code
style="white-space: pre;">⁠s3://DOC-EXAMPLE-BUCKET/my-transcript.json⁠</code>.</p></li>
<li><p>If you specify 'my-first-transcription' as the
<code>MedicalTranscriptionJobName</code>, 'DOC-EXAMPLE-BUCKET' as the
<code>OutputBucketName</code>, and 'my-transcript' as the
<code>OutputKey</code>, your transcription output path is <code
style="white-space: pre;">⁠s3://DOC-EXAMPLE-BUCKET/my-transcript/my-first-transcription.json⁠</code>.</p></li>
<li><p>If you specify 'DOC-EXAMPLE-BUCKET' as the
<code>OutputBucketName</code> and 'test-files/my-transcript.json' as the
<code>OutputKey</code>, your transcription output path is <code
style="white-space: pre;">⁠s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript.json⁠</code>.</p></li>
<li><p>If you specify 'my-first-transcription' as the
<code>MedicalTranscriptionJobName</code>, 'DOC-EXAMPLE-BUCKET' as the
<code>OutputBucketName</code>, and 'test-files/my-transcript' as the
<code>OutputKey</code>, your transcription output path is <code
style="white-space: pre;">⁠s3://DOC-EXAMPLE-BUCKET/test-files/my-transcript/my-first-transcription.json⁠</code>.</p></li>
</ul>
<p>If you specify the name of an Amazon S3 bucket sub-folder that
doesn't exist, one is created for you.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_medical_transcription_job_:_OutputEncryptionKMSKeyId">OutputEncryptionKMSKeyId</code></td>
<td><p>The KMS key you want to use to encrypt your medical transcription
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
id="transcribeservice_start_medical_transcription_job_:_KMSEncryptionContext">KMSEncryptionContext</code></td>
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
id="transcribeservice_start_medical_transcription_job_:_Settings">Settings</code></td>
<td><p>Specify additional optional settings in your request, including
channel identification, alternative transcriptions, and speaker
partitioning. You can use that to apply custom vocabularies to your
transcription job.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_medical_transcription_job_:_ContentIdentificationType">ContentIdentificationType</code></td>
<td><p>Labels all personal health information (PHI) identified in your
transcript. For more information, see <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/phi-id.html">Identifying
personal health information (PHI) in a transcription</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_medical_transcription_job_:_Specialty">Specialty</code></td>
<td><p>[required] Specify the predominant medical specialty represented
in your media. For batch transcriptions, <code>PRIMARYCARE</code> is the
only valid value. If you require additional specialties, refer to
.</p></td>
</tr>
<tr class="odd">
<td><code
id="transcribeservice_start_medical_transcription_job_:_Type">Type</code></td>
<td><p>[required] Specify whether your input media contains only one
person (<code>DICTATION</code>) or contains a conversation between two
people (<code>CONVERSATION</code>).</p>
<p>For example, <code>DICTATION</code> could be used for a medical
professional wanting to transcribe voice memos;
<code>CONVERSATION</code> could be used for transcribing the
doctor-patient dialogue during the patient's office visit.</p></td>
</tr>
<tr class="even">
<td><code
id="transcribeservice_start_medical_transcription_job_:_Tags">Tags</code></td>
<td><p>Adds one or more custom tags, each in the form of a key:value
pair, to a new medical transcription job at the time you start this new
job.</p>
<p>To learn more about using tags with Amazon Transcribe, refer to <a
href="https://docs.aws.amazon.com/transcribe/latest/dg/tagging.html">Tagging
resources</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MedicalTranscriptionJob = list(
        MedicalTranscriptionJobName = "string",
        TranscriptionJobStatus = "QUEUED"|"IN_PROGRESS"|"FAILED"|"COMPLETED",
        LanguageCode = "af-ZA"|"ar-AE"|"ar-SA"|"da-DK"|"de-CH"|"de-DE"|"en-AB"|"en-AU"|"en-GB"|"en-IE"|"en-IN"|"en-US"|"en-WL"|"es-ES"|"es-US"|"fa-IR"|"fr-CA"|"fr-FR"|"he-IL"|"hi-IN"|"id-ID"|"it-IT"|"ja-JP"|"ko-KR"|"ms-MY"|"nl-NL"|"pt-BR"|"pt-PT"|"ru-RU"|"ta-IN"|"te-IN"|"tr-TR"|"zh-CN"|"zh-TW"|"th-TH"|"en-ZA"|"en-NZ"|"vi-VN"|"sv-SE",
        MediaSampleRateHertz = 123,
        MediaFormat = "mp3"|"mp4"|"wav"|"flac"|"ogg"|"amr"|"webm",
        Media = list(
          MediaFileUri = "string",
          RedactedMediaFileUri = "string"
        ),
        Transcript = list(
          TranscriptFileUri = "string"
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
          ShowSpeakerLabels = TRUE|FALSE,
          MaxSpeakerLabels = 123,
          ChannelIdentification = TRUE|FALSE,
          ShowAlternatives = TRUE|FALSE,
          MaxAlternatives = 123,
          VocabularyName = "string"
        ),
        ContentIdentificationType = "PHI",
        Specialty = "PRIMARYCARE",
        Type = "CONVERSATION"|"DICTATION",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$start_medical_transcription_job(
      MedicalTranscriptionJobName = "string",
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
        ShowSpeakerLabels = TRUE|FALSE,
        MaxSpeakerLabels = 123,
        ChannelIdentification = TRUE|FALSE,
        ShowAlternatives = TRUE|FALSE,
        MaxAlternatives = 123,
        VocabularyName = "string"
      ),
      ContentIdentificationType = "PHI",
      Specialty = "PRIMARYCARE",
      Type = "CONVERSATION"|"DICTATION",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
