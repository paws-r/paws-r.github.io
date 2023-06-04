<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehendmedical_list_snomedct_inference_jobs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of InferSNOMEDCT jobs a user has submitted

### Description

Gets a list of InferSNOMEDCT jobs a user has submitted.

### Usage

    comprehendmedical_list_snomedct_inference_jobs(Filter, NextToken,
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
id="comprehendmedical_list_snomedct_inference_jobs_:_Filter">Filter</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="comprehendmedical_list_snomedct_inference_jobs_:_NextToken">NextToken</code></td>
<td><p>Identifies the next page of InferSNOMEDCT results to
return.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehendmedical_list_snomedct_inference_jobs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in each page. The default
is 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ComprehendMedicalAsyncJobPropertiesList = list(
        list(
          JobId = "string",
          JobName = "string",
          JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"PARTIAL_SUCCESS"|"FAILED"|"STOP_REQUESTED"|"STOPPED",
          Message = "string",
          SubmitTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          ExpirationTime = as.POSIXct(
            "2015-01-01"
          ),
          InputDataConfig = list(
            S3Bucket = "string",
            S3Key = "string"
          ),
          OutputDataConfig = list(
            S3Bucket = "string",
            S3Key = "string"
          ),
          LanguageCode = "en",
          DataAccessRoleArn = "string",
          ManifestFilePath = "string",
          KMSKey = "string",
          ModelVersion = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_snomedct_inference_jobs(
      Filter = list(
        JobName = "string",
        JobStatus = "SUBMITTED"|"IN_PROGRESS"|"COMPLETED"|"PARTIAL_SUCCESS"|"FAILED"|"STOP_REQUESTED"|"STOPPED",
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
