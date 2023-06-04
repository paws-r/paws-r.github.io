<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_create_dataset_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a job that imports training data from your data source (an Amazon S3 bucket) to an Amazon Personalize dataset

### Description

Creates a job that imports training data from your data source (an
Amazon S3 bucket) to an Amazon Personalize dataset. To allow Amazon
Personalize to import the training data, you must specify an IAM service
role that has permission to read from the data source, as Amazon
Personalize makes a copy of your data and processes it internally. For
information on granting access to your Amazon S3 bucket, see [Giving
Amazon Personalize Access to Amazon S3
Resources](https://docs.aws.amazon.com/personalize/latest/dg/granting-personalize-s3-access.html).

By default, a dataset import job replaces any existing data in the
dataset that you imported in bulk. To add new records without replacing
existing data, specify INCREMENTAL for the import mode in the
CreateDatasetImportJob operation.

**Status**

A dataset import job can be in one of the following states:

-   CREATE PENDING \\ CREATE IN\_PROGRESS \\ ACTIVE -or- CREATE FAILED

To get the status of the import job, call `describe_dataset_import_job`,
providing the Amazon Resource Name (ARN) of the dataset import job. The
dataset import is complete when the status shows as ACTIVE. If the
status shows as CREATE FAILED, the response includes a `failureReason`
key, which describes why the job failed.

Importing takes time. You must wait until the status shows as ACTIVE
before training a model using the dataset.

**Related APIs**

-   `list_dataset_import_jobs`

-   `describe_dataset_import_job`

### Usage

    personalize_create_dataset_import_job(jobName, datasetArn, dataSource,
      roleArn, tags, importMode, publishAttributionMetricsToS3)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_create_dataset_import_job_:_jobName">jobName</code></td>
<td><p>[required] The name for the dataset import job.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_dataset_import_job_:_datasetArn">datasetArn</code></td>
<td><p>[required] The ARN of the dataset that receives the imported
data.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_dataset_import_job_:_dataSource">dataSource</code></td>
<td><p>[required] The Amazon S3 bucket that contains the training data
to import.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_dataset_import_job_:_roleArn">roleArn</code></td>
<td><p>[required] The ARN of the IAM role that has permissions to read
from the Amazon S3 data source.</p></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_dataset_import_job_:_tags">tags</code></td>
<td><p>A list of tags to apply to the dataset import job.</p></td>
</tr>
<tr class="even">
<td><code
id="personalize_create_dataset_import_job_:_importMode">importMode</code></td>
<td><p>Specify how to add the new records to an existing dataset. The
default import mode is <code>FULL</code>. If you haven't imported bulk
records into the dataset previously, you can only specify
<code>FULL</code>.</p>
<ul>
<li><p>Specify <code>FULL</code> to overwrite all existing bulk data in
your dataset. Data you imported individually is not replaced.</p></li>
<li><p>Specify <code>INCREMENTAL</code> to append the new records to the
existing data in your dataset. Amazon Personalize replaces any record
with the same ID with the new one.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="personalize_create_dataset_import_job_:_publishAttributionMetricsToS3">publishAttributionMetricsToS3</code></td>
<td><p>If you created a metric attribution, specify whether to publish
metrics for this import job to Amazon S3</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetImportJobArn = "string"
    )

### Request syntax

    svc$create_dataset_import_job(
      jobName = "string",
      datasetArn = "string",
      dataSource = list(
        dataLocation = "string"
      ),
      roleArn = "string",
      tags = list(
        list(
          tagKey = "string",
          tagValue = "string"
        )
      ),
      importMode = "FULL"|"INCREMENTAL",
      publishAttributionMetricsToS3 = TRUE|FALSE
    )
