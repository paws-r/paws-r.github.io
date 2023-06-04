<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_get_call_analytics_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the specified Call Analytics job

### Description

Provides information about the specified Call Analytics job.

To view the job's status, refer to `CallAnalyticsJobStatus`. If the
status is `COMPLETED`, the job is finished. You can find your completed
transcript at the URI specified in `TranscriptFileUri`. If the status is
`FAILED`, `FailureReason` provides details on why your transcription job
failed.

If you enabled personally identifiable information (PII) redaction, the
redacted transcript appears at the location specified in
`RedactedTranscriptFileUri`.

If you chose to redact the audio in your media file, you can find your
redacted media file at the location specified in `RedactedMediaFileUri`.

To get a list of your Call Analytics jobs, use the operation.

### Usage

    transcribeservice_get_call_analytics_job(CallAnalyticsJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_get_call_analytics_job_:_CallAnalyticsJobName">CallAnalyticsJobName</code></td>
<td><p>[required] The name of the Call Analytics job you want
information about. Job names are case sensitive.</p></td>
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

    svc$get_call_analytics_job(
      CallAnalyticsJobName = "string"
    )
