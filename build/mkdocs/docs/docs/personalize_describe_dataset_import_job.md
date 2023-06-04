<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_dataset_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the dataset import job created by CreateDatasetImportJob, including the import job status

### Description

Describes the dataset import job created by `create_dataset_import_job`,
including the import job status.

### Usage

    personalize_describe_dataset_import_job(datasetImportJobArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_dataset_import_job_:_datasetImportJobArn">datasetImportJobArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset import
job to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetImportJob = list(
        jobName = "string",
        datasetImportJobArn = "string",
        datasetArn = "string",
        dataSource = list(
          dataLocation = "string"
        ),
        roleArn = "string",
        status = "string",
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        failureReason = "string",
        importMode = "FULL"|"INCREMENTAL",
        publishAttributionMetricsToS3 = TRUE|FALSE
      )
    )

### Request syntax

    svc$describe_dataset_import_job(
      datasetImportJobArn = "string"
    )
