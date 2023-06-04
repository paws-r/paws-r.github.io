<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_list_document_classification_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the documentation classification jobs that you have submitted

### Description

Gets a list of the documentation classification jobs that you have
submitted.

### Usage

    comprehend_list_document_classification_jobs(Filter, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_list_document_classification_jobs_:_Filter">Filter</code></td>
<td><p>Filters the jobs that are returned. You can filter jobs on their
names, status, or the date and time that they were submitted. You can
only set one filter at a time.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_list_document_classification_jobs_:_NextToken">NextToken</code></td>
<td><p>Identifies the next page of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_list_document_classification_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in each page. The default
is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DocumentClassificationJobPropertiesList = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_document_classification_jobs(
      Filter = list(
        JobName = "string",
        JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"FAILED"|"STOP_REQUESTED"|"STOPPED",
        SubmitTimeBefore = as.POSIXct(
          "2015-01-01"
        ),
        SubmitTimeAfter = as.POSIXct(
          "2015-01-01"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
