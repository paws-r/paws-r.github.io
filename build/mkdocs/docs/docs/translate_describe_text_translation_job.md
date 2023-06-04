<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_describe_text_translation_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the properties associated with an asynchronous batch translation job including name, ID, status, source and target languages, input/output S3 buckets, and so on

### Description

Gets the properties associated with an asynchronous batch translation
job including name, ID, status, source and target languages,
input/output S3 buckets, and so on.

### Usage

    translate_describe_text_translation_job(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="translate_describe_text_translation_job_:_JobId">JobId</code></td>
<td><p>[required] The identifier that Amazon Translate generated for the
job. The <code>start_text_translation_job</code> operation returns this
identifier in its response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TextTranslationJobProperties = list(
        JobId = "string",
        JobName = "string",
        JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"COMPLETED_WITH_ERROR"|"FAILED"|"STOP_REQUESTED"|"STOPPED",
        JobDetails = list(
          TranslatedDocumentsCount = 123,
          DocumentsWithErrorsCount = 123,
          InputDocumentsCount = 123
        ),
        SourceLanguageCode = "string",
        TargetLanguageCodes = list(
          "string"
        ),
        TerminologyNames = list(
          "string"
        ),
        ParallelDataNames = list(
          "string"
        ),
        Message = "string",
        SubmittedTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        InputDataConfig = list(
          S3Uri = "string",
          ContentType = "string"
        ),
        OutputDataConfig = list(
          S3Uri = "string",
          EncryptionKey = list(
            Type = "KMS",
            Id = "string"
          )
        ),
        DataAccessRoleArn = "string",
        Settings = list(
          Formality = "FORMAL"|"INFORMAL",
          Profanity = "MASK"
        )
      )
    )

### Request syntax

    svc$describe_text_translation_job(
      JobId = "string"
    )
