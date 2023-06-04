<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>transcribeservice_get_transcription_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the specified transcription job

### Description

Provides information about the specified transcription job.

To view the status of the specified transcription job, check the
`TranscriptionJobStatus` field. If the status is `COMPLETED`, the job is
finished. You can find the results at the location specified in
`TranscriptFileUri`. If the status is `FAILED`, `FailureReason` provides
details on why your transcription job failed.

If you enabled content redaction, the redacted transcript can be found
at the location specified in `RedactedTranscriptFileUri`.

To get a list of your transcription jobs, use the operation.

### Usage

    transcribeservice_get_transcription_job(TranscriptionJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="transcribeservice_get_transcription_job_:_TranscriptionJobName">TranscriptionJobName</code></td>
<td><p>[required] The name of the transcription job you want information
about. Job names are case sensitive.</p></td>
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

    svc$get_transcription_job(
      TranscriptionJobName = "string"
    )
