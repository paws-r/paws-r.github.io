<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_model_card_export_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon SageMaker Model Card export job

### Description

Creates an Amazon SageMaker Model Card export job.

### Usage

    sagemaker_create_model_card_export_job(ModelCardName, ModelCardVersion,
      ModelCardExportJobName, OutputConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_model_card_export_job_:_ModelCardName">ModelCardName</code></td>
<td><p>[required] The name of the model card to export.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_card_export_job_:_ModelCardVersion">ModelCardVersion</code></td>
<td><p>The version of the model card to export. If a version is not
provided, then the latest version of the model card is
exported.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_card_export_job_:_ModelCardExportJobName">ModelCardExportJobName</code></td>
<td><p>[required] The name of the model card export job.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_card_export_job_:_OutputConfig">OutputConfig</code></td>
<td><p>[required] The model card output configuration that specifies the
Amazon S3 path for exporting.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelCardExportJobArn = "string"
    )

### Request syntax

    svc$create_model_card_export_job(
      ModelCardName = "string",
      ModelCardVersion = 123,
      ModelCardExportJobName = "string",
      OutputConfig = list(
        S3OutputPath = "string"
      )
    )
