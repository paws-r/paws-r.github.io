<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_describe_dataset_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the dataset export job created by CreateDatasetExportJob, including the export job status

### Description

Describes the dataset export job created by `create_dataset_export_job`,
including the export job status.

### Usage

    personalize_describe_dataset_export_job(datasetExportJobArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_describe_dataset_export_job_:_datasetExportJobArn">datasetExportJobArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the dataset export
job to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      datasetExportJob = list(
        jobName = "string",
        datasetExportJobArn = "string",
        datasetArn = "string",
        ingestionMode = "BULK"|"PUT"|"ALL",
        roleArn = "string",
        status = "string",
        jobOutput = list(
          s3DataDestination = list(
            path = "string",
            kmsKeyArn = "string"
          )
        ),
        creationDateTime = as.POSIXct(
          "2015-01-01"
        ),
        lastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        failureReason = "string"
      )
    )

### Request syntax

    svc$describe_dataset_export_job(
      datasetExportJobArn = "string"
    )
