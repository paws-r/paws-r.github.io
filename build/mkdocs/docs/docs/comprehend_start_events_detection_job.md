<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_start_events_detection_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an asynchronous event detection job for a collection of documents

### Description

Starts an asynchronous event detection job for a collection of
documents.

### Usage

    comprehend_start_events_detection_job(InputDataConfig, OutputDataConfig,
      DataAccessRoleArn, JobName, LanguageCode, ClientRequestToken,
      TargetEventTypes, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_start_events_detection_job_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] Specifies the format and location of the input data
for the job.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_events_detection_job_:_OutputDataConfig">OutputDataConfig</code></td>
<td><p>[required] Specifies where to send the output files.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_start_events_detection_job_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role that
grants Amazon Comprehend read access to your input data.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_events_detection_job_:_JobName">JobName</code></td>
<td><p>The identifier of the events detection job.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_start_events_detection_job_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language code of the input documents.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_events_detection_job_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>An unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_start_events_detection_job_:_TargetEventTypes">TargetEventTypes</code></td>
<td><p>[required] The types of events to detect in the input
documents.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_events_detection_job_:_Tags">Tags</code></td>
<td><p>Tags to associate with the events detection job. A tag is a
key-value pair that adds metadata to a resource used by Amazon
Comprehend. For example, a tag with "Sales" as the key might be added to
a resource to indicate its use by the sales department.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string",
      JobArn = "string",
      JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"FAILED"|"STOP_REQUESTED"|"STOPPED"
    )

### Request syntax

    svc$start_events_detection_job(
      InputDataConfig = list(
        S3Uri = "string",
        InputFormat = "ONE_DOC_PER_FILE"|"ONE_DOC_PER_LINE",
        DocumentReaderConfig = list(
          DocumentReadAction = "TEXTRACT_DETECT_DOCUMENT_TEXT"|"TEXTRACT_ANALYZE_DOCUMENT",
          DocumentReadMode = "SERVICE_DEFAULT"|"FORCE_DOCUMENT_READ_ACTION",
          FeatureTypes = list(
            "TABLES"|"FORMS"
          )
        )
      ),
      OutputDataConfig = list(
        S3Uri = "string",
        KmsKeyId = "string"
      ),
      DataAccessRoleArn = "string",
      JobName = "string",
      LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW",
      ClientRequestToken = "string",
      TargetEventTypes = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
