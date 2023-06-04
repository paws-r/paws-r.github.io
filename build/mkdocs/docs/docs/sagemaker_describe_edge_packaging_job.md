<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_edge_packaging_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A description of edge packaging jobs

### Description

A description of edge packaging jobs.

### Usage

    sagemaker_describe_edge_packaging_job(EdgePackagingJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_edge_packaging_job_:_EdgePackagingJobName">EdgePackagingJobName</code></td>
<td><p>[required] The name of the edge packaging job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EdgePackagingJobArn = "string",
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
      EdgePackagingJobStatus = "STARTING"|"INPROGRESS"|"COMPLETED"|"FAILED"|"STOPPING"|"STOPPED",
      EdgePackagingJobStatusMessage = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      ModelArtifact = "string",
      ModelSignature = "string",
      PresetDeploymentOutput = list(
        Type = "GreengrassV2Component",
        Artifact = "string",
        Status = "COMPLETED"|"FAILED",
        StatusMessage = "string"
      )
    )

### Request syntax

    svc$describe_edge_packaging_job(
      EdgePackagingJobName = "string"
    )
