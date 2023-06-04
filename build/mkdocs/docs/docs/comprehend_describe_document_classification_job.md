<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_describe_document_classification_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the properties associated with a document classification job

### Description

Gets the properties associated with a document classification job. Use
this operation to get the status of a classification job.

### Usage

    comprehend_describe_document_classification_job(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_describe_document_classification_job_:_JobId">JobId</code></td>
<td><p>[required] The identifier that Amazon Comprehend generated for
the job. The <code>start_document_classification_job</code> operation
returns this identifier in its response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DocumentClassificationJobProperties = list(
        JobId = "string",
        JobArn = "string",
        JobName = "string",
        JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"FAILED"|"STOP_REQUESTED"|"STOPPED",
        Message = "string",
        SubmitTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        DocumentClassifierArn = "string",
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
        VolumeKmsKeyId = "string",
        VpcConfig = list(
          SecurityGroupIds = list(
            "string"
          ),
          Subnets = list(
            "string"
          )
        ),
        FlywheelArn = "string"
      )
    )

### Request syntax

    svc$describe_document_classification_job(
      JobId = "string"
    )
