<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_list_text_translation_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the batch translation jobs that you have submitted

### Description

Gets a list of the batch translation jobs that you have submitted.

### Usage

    translate_list_text_translation_jobs(Filter, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="translate_list_text_translation_jobs_:_Filter">Filter</code></td>
<td><p>The parameters that specify which batch translation jobs to
retrieve. Filters include job name, job status, and submission time. You
can only set one filter at a time.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_list_text_translation_jobs_:_NextToken">NextToken</code></td>
<td><p>The token to request the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="translate_list_text_translation_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in each page. The default
value is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TextTranslationJobPropertiesList = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_text_translation_jobs(
      Filter = list(
        JobName = "string",
        JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"COMPLETED_WITH_ERROR"|"FAILED"|"STOP_REQUESTED"|"STOPPED",
        SubmittedBeforeTime = as.POSIXct(
          "2015-01-01"
        ),
        SubmittedAfterTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
