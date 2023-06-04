<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_start_sentiment_detection_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts an asynchronous sentiment detection job for a collection of documents

### Description

Starts an asynchronous sentiment detection job for a collection of
documents. Use the operation to track the status of a job.

### Usage

    comprehend_start_sentiment_detection_job(InputDataConfig,
      OutputDataConfig, DataAccessRoleArn, JobName, LanguageCode,
      ClientRequestToken, VolumeKmsKeyId, VpcConfig, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_start_sentiment_detection_job_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] Specifies the format and location of the input data
for the job.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_sentiment_detection_job_:_OutputDataConfig">OutputDataConfig</code></td>
<td><p>[required] Specifies where to send the output files.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_start_sentiment_detection_job_:_DataAccessRoleArn">DataAccessRoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM role that
grants Amazon Comprehend read access to your input data. For more
information, see <a
href="https://docs.aws.amazon.com/comprehend/latest/dg/security_iam_id-based-policy-examples.html#auth-role-permissions">Role-based
permissions</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_sentiment_detection_job_:_JobName">JobName</code></td>
<td><p>The identifier of the job.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_start_sentiment_detection_job_:_LanguageCode">LanguageCode</code></td>
<td><p>[required] The language of the input documents. You can specify
any of the primary languages supported by Amazon Comprehend. All
documents must be in the same language.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_sentiment_detection_job_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for the request. If you don't set the client
request token, Amazon Comprehend generates one.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_start_sentiment_detection_job_:_VolumeKmsKeyId">VolumeKmsKeyId</code></td>
<td><p>ID for the Amazon Web Services Key Management Service (KMS) key
that Amazon Comprehend uses to encrypt data on the storage volume
attached to the ML compute instance(s) that process the analysis job.
The VolumeKmsKeyId can be either of the following formats:</p>
<ul>
<li><p>KMS Key ID:
<code>"1234abcd-12ab-34cd-56ef-1234567890ab"</code></p></li>
<li><p>Amazon Resource Name (ARN) of a KMS Key:
<code>"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"</code></p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="comprehend_start_sentiment_detection_job_:_VpcConfig">VpcConfig</code></td>
<td><p>Configuration parameters for an optional private Virtual Private
Cloud (VPC) containing the resources you are using for your sentiment
detection job. For more information, see <a
href="https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html">Amazon
VPC</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_start_sentiment_detection_job_:_Tags">Tags</code></td>
<td><p>Tags to associate with the sentiment detection job. A tag is a
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

    svc$start_sentiment_detection_job(
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
      VolumeKmsKeyId = "string",
      VpcConfig = list(
        SecurityGroupIds = list(
          "string"
        ),
        Subnets = list(
          "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
