<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_create_batch_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a batch import job

### Description

Creates a batch import job.

### Usage

    frauddetector_create_batch_import_job(jobId, inputPath, outputPath,
      eventTypeName, iamRoleArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_create_batch_import_job_:_jobId">jobId</code></td>
<td><p>[required] The ID of the batch import job. The ID cannot be of a
past job, unless the job exists in <code>CREATE_FAILED</code>
state.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_batch_import_job_:_inputPath">inputPath</code></td>
<td><p>[required] The URI that points to the Amazon S3 location of your
data file.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_batch_import_job_:_outputPath">outputPath</code></td>
<td><p>[required] The URI that points to the Amazon S3 location for
storing your results.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_batch_import_job_:_eventTypeName">eventTypeName</code></td>
<td><p>[required] The name of the event type.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_batch_import_job_:_iamRoleArn">iamRoleArn</code></td>
<td><p>[required] The ARN of the IAM role created for Amazon S3 bucket
that holds your data file.</p>
<p>The IAM role must have read permissions to your input S3 bucket and
write permissions to your output S3 bucket. For more information about
bucket permissions, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-policies-s3.html">User
policy examples</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_batch_import_job_:_tags">tags</code></td>
<td><p>A collection of key-value pairs associated with this
request.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_batch_import_job(
      jobId = "string",
      inputPath = "string",
      outputPath = "string",
      eventTypeName = "string",
      iamRoleArn = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
