<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_transform_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a transform job

### Description

Returns information about a transform job.

### Usage

    sagemaker_describe_transform_job(TransformJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_transform_job_:_TransformJobName">TransformJobName</code></td>
<td><p>[required] The name of the transform job that you want to view
details of.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransformJobName = "string",
      TransformJobArn = "string",
      TransformJobStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
      FailureReason = "string",
      ModelName = "string",
      MaxConcurrentTransforms = 123,
      ModelClientConfig = list(
        InvocationsTimeoutInSeconds = 123,
        InvocationsMaxRetries = 123
      ),
      MaxPayloadInMB = 123,
      BatchStrategy = "MultiRecord"|"SingleRecord",
      Environment = list(
        "string"
      ),
      TransformInput = list(
        DataSource = list(
          S3DataSource = list(
            S3DataType = "ManifestFile"|"S3Prefix"|"AugmentedManifestFile",
            S3Uri = "string"
          )
        ),
        ContentType = "string",
        CompressionType = "None"|"Gzip",
        SplitType = "None"|"Line"|"RecordIO"|"TFRecord"
      ),
      TransformOutput = list(
        S3OutputPath = "string",
        Accept = "string",
        AssembleWith = "None"|"Line",
        KmsKeyId = "string"
      ),
      DataCaptureConfig = list(
        DestinationS3Uri = "string",
        KmsKeyId = "string",
        GenerateInferenceId = TRUE|FALSE
      ),
      TransformResources = list(
        InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge",
        InstanceCount = 123,
        VolumeKmsKeyId = "string"
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      TransformStartTime = as.POSIXct(
        "2015-01-01"
      ),
      TransformEndTime = as.POSIXct(
        "2015-01-01"
      ),
      LabelingJobArn = "string",
      AutoMLJobArn = "string",
      DataProcessing = list(
        InputFilter = "string",
        OutputFilter = "string",
        JoinSource = "Input"|"None"
      ),
      ExperimentConfig = list(
        ExperimentName = "string",
        TrialName = "string",
        TrialComponentDisplayName = "string",
        RunName = "string"
      )
    )

### Request syntax

    svc$describe_transform_job(
      TransformJobName = "string"
    )
