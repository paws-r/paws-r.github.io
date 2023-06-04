<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_model_card_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an Amazon SageMaker Model Card export job

### Description

Describes an Amazon SageMaker Model Card export job.

### Usage

    sagemaker_describe_model_card_export_job(ModelCardExportJobArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_model_card_export_job_:_ModelCardExportJobArn">ModelCardExportJobArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the model card
export job to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelCardExportJobName = "string",
      ModelCardExportJobArn = "string",
      Status = "InProgress"|"Completed"|"Failed",
      ModelCardName = "string",
      ModelCardVersion = 123,
      OutputConfig = list(
        S3OutputPath = "string"
      ),
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedAt = as.POSIXct(
        "2015-01-01"
      ),
      FailureReason = "string",
      ExportArtifacts = list(
        S3ExportArtifacts = "string"
      )
    )

### Request syntax

    svc$describe_model_card_export_job(
      ModelCardExportJobArn = "string"
    )
