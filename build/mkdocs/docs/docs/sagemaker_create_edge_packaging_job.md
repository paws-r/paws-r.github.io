<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_edge_packaging_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a SageMaker Edge Manager model packaging job

### Description

Starts a SageMaker Edge Manager model packaging job. Edge Manager will
use the model artifacts from the Amazon Simple Storage Service bucket
that you specify. After the model has been packaged, Amazon SageMaker
saves the resulting artifacts to an S3 bucket that you specify.

### Usage

    sagemaker_create_edge_packaging_job(EdgePackagingJobName,
      CompilationJobName, ModelName, ModelVersion, RoleArn, OutputConfig,
      ResourceKey, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_edge_packaging_job_:_EdgePackagingJobName">EdgePackagingJobName</code></td>
<td><p>[required] The name of the edge packaging job.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_edge_packaging_job_:_CompilationJobName">CompilationJobName</code></td>
<td><p>[required] The name of the SageMaker Neo compilation job that
will be used to locate model artifacts for packaging.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_edge_packaging_job_:_ModelName">ModelName</code></td>
<td><p>[required] The name of the model.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_edge_packaging_job_:_ModelVersion">ModelVersion</code></td>
<td><p>[required] The version of the model.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_edge_packaging_job_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role that
enables Amazon SageMaker to download and upload the model, and to
contact SageMaker Neo.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_edge_packaging_job_:_OutputConfig">OutputConfig</code></td>
<td><p>[required] Provides information about the output location for the
packaged model.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_edge_packaging_job_:_ResourceKey">ResourceKey</code></td>
<td><p>The Amazon Web Services KMS key to use when encrypting the EBS
volume the edge packaging job runs on.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_edge_packaging_job_:_Tags">Tags</code></td>
<td><p>Creates tags for the packaging job.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_edge_packaging_job(
      EdgePackagingJobName = "string",
      CompilationJobName = "string",
      ModelName = "string",
      ModelVersion = "string",
      RoleArn = "string",
      OutputConfig = list(
        S3OutputLocation = "string",
        KmsKeyId = "string",
        PresetDeploymentType = "GreengrassV2Component",
        PresetDeploymentConfig = "string"
      ),
      ResourceKey = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
