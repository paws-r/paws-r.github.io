<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_dataset_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a job that exports data from your dataset to an Amazon S3 bucket

### Description

Creates a job that exports data from your dataset to an Amazon S3
bucket. To allow Amazon Personalize to export the training data, you
must specify an service-linked IAM role that gives Amazon Personalize
`PutObject` permissions for your Amazon S3 bucket. For information, see
[Exporting a
dataset](https://docs.aws.amazon.com/personalize/latest/dg/export-data.html)
in the Amazon Personalize developer guide.

**Status**

A dataset export job can be in one of the following states:

-   CREATE PENDING \\ CREATE IN\_PROGRESS \\ ACTIVE -or- CREATE FAILED

To get the status of the export job, call `describe_dataset_export_job`,
and specify the Amazon Resource Name (ARN) of the dataset export job.
The dataset export is complete when the status shows as ACTIVE. If the
status shows as CREATE FAILED, the response includes a `failureReason`
key, which describes why the job failed.

### Usage

    personalize_create_dataset_export_job(jobName, datasetArn,
      ingestionMode, roleArn, jobOutput, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_create_dataset_export_job_:_jobName">jobName</code></td>
<td><p>[required] The name for the dataset export job.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_dataset_export_job_:_datasetArn">datasetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset that
contains the data to export.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_dataset_export_job_:_ingestionMode">ingestionMode</code></td>
<td><p>The data to export, based on how you imported the data. You can
choose to export only <code>BULK</code> data that you imported using a
dataset import job, only <code>PUT</code> data that you imported
incrementally (using the console, PutEvents, PutUsers and PutItems
operations), or <code>ALL</code> for both types. The default value is
<code>PUT</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_dataset_export_job_:_roleArn">roleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM service role
that has permissions to add data to your output Amazon S3
bucket.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_dataset_export_job_:_jobOutput">jobOutput</code></td>
<td><p>[required] The path to the Amazon S3 bucket where the job's
output is stored.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_dataset_export_job_:_tags">tags</code></td>
<td><p>A list of tags to apply to the dataset export job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetExportJobArn = "string"
    )

### Request syntax

    svc$create_dataset_export_job(
      jobName = "string",
      datasetArn = "string",
      ingestionMode = "BULK"|"PUT"|"ALL",
      roleArn = "string",
      jobOutput = list(
        s3DataDestination = list(
          path = "string",
          kmsKeyArn = "string"
        )
      ),
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      )
    )
