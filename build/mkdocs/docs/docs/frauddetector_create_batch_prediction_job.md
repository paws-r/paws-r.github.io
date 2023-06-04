<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_create_batch_prediction_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a batch prediction job

### Description

Creates a batch prediction job.

### Usage

    frauddetector_create_batch_prediction_job(jobId, inputPath, outputPath,
      eventTypeName, detectorName, detectorVersion, iamRoleArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_create_batch_prediction_job_:_jobId">jobId</code></td>
<td><p>[required] The ID of the batch prediction job.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_batch_prediction_job_:_inputPath">inputPath</code></td>
<td><p>[required] The Amazon S3 location of your training file.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_batch_prediction_job_:_outputPath">outputPath</code></td>
<td><p>[required] The Amazon S3 location of your output file.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_batch_prediction_job_:_eventTypeName">eventTypeName</code></td>
<td><p>[required] The name of the event type.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_batch_prediction_job_:_detectorName">detectorName</code></td>
<td><p>[required] The name of the detector.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_batch_prediction_job_:_detectorVersion">detectorVersion</code></td>
<td><p>The detector version.</p></td>
</tr>
<tr class="odd">
<td><code
id="frauddetector_create_batch_prediction_job_:_iamRoleArn">iamRoleArn</code></td>
<td><p>[required] The ARN of the IAM role to use for this job
request.</p>
<p>The IAM Role must have read permissions to your input S3 bucket and
write permissions to your output S3 bucket. For more information about
bucket permissions, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-policies-s3.html">User
policy examples</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_create_batch_prediction_job_:_tags">tags</code></td>
<td><p>A collection of key and value pairs.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_batch_prediction_job(
      jobId = "string",
      inputPath = "string",
      outputPath = "string",
      eventTypeName = "string",
      detectorName = "string",
      detectorVersion = "string",
      iamRoleArn = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
