<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehendmedical_start_snomedct_inference_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an asynchronous job to detect medical concepts and link them to the SNOMED-CT ontology

### Description

Starts an asynchronous job to detect medical concepts and link them to
the SNOMED-CT ontology. Use the DescribeSNOMEDCTInferenceJob operation
to track the status of a job.

### Usage

    comprehendmedical_start_snomedct_inference_job(InputDataConfig,
      OutputDataConfig, DataAccessRoleArn, JobName, ClientRequestToken,
      KMSKey, LanguageCode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehendmedical_start_snomedct_inference_job_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="comprehendmedical_start_snomedct_inference_job_:_OutputDataConfig">OutputDataConfig</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehendmedical_start_snomedct_inference_job_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the AWS Identity and
Access Management (IAM) role that grants Amazon Comprehend Medical read
access to your input data.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehendmedical_start_snomedct_inference_job_:_JobName">JobName</code></td>
<td><p>The user generated name the asynchronous InferSNOMEDCT
job.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehendmedical_start_snomedct_inference_job_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend Medical generates one.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehendmedical_start_snomedct_inference_job_:_KMSKey">KMSKey</code></td>
<td><p>An AWS Key Management Service key used to encrypt your output
files. If you do not specify a key, the files are written in plain
text.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehendmedical_start_snomedct_inference_job_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language of the input documents. All documents
must be in the same language.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$start_snomedct_inference_job(
      InputDataConfig = list(
        S3Bucket = "string",
        S3Key = "string"
      ),
      OutputDataConfig = list(
        S3Bucket = "string",
        S3Key = "string"
      ),
      DataAccessRoleArn = "string",
      JobName = "string",
      ClientRequestToken = "string",
      KMSKey = "string",
      LanguageCode = "en"
    )
