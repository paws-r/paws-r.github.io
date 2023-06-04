<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_processing_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of a processing job

### Description

Returns a description of a processing job.

### Usage

    sagemaker_describe_processing_job(ProcessingJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_processing_job_:_ProcessingJobName">ProcessingJobName</code></td>
<td><p>[required] The name of the processing job. The name must be
unique within an Amazon Web Services Region in the Amazon Web Services
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProcessingInputs = list(
        list(
          InputName = "string",
          AppManaged = TRUE|FALSE,
          S3Input = list(
            S3Uri = "string",
            LocalPath = "string",
            S3DataType = "ManifestFile"|"S3Prefix",
            S3InputMode = "Pipe"|"File",
            S3DataDistributionType = "FullyReplicated"|"ShardedByS3Key",
            S3CompressionType = "None"|"Gzip"
          ),
          DatasetDefinition = list(
            AthenaDatasetDefinition = list(
              Catalog = "string",
              Database = "string",
              QueryString = "string",
              WorkGroup = "string",
              OutputS3Uri = "string",
              KmsKeyId = "string",
              OutputFormat = "PARQUET"|"ORC"|"AVRO"|"JSON"|"TEXTFILE",
              OutputCompression = "GZIP"|"SNAPPY"|"ZLIB"
            ),
            RedshiftDatasetDefinition = list(
              ClusterId = "string",
              Database = "string",
              DbUser = "string",
              QueryString = "string",
              ClusterRoleArn = "string",
              OutputS3Uri = "string",
              KmsKeyId = "string",
              OutputFormat = "PARQUET"|"CSV",
              OutputCompression = "None"|"GZIP"|"BZIP2"|"ZSTD"|"SNAPPY"
            ),
            LocalPath = "string",
            DataDistributionType = "FullyReplicated"|"ShardedByS3Key",
            InputMode = "Pipe"|"File"
          )
        )
      ),
      ProcessingOutputConfig = list(
        Outputs = list(
          list(
            OutputName = "string",
            S3Output = list(
              S3Uri = "string",
              LocalPath = "string",
              S3UploadMode = "Continuous"|"EndOfJob"
            ),
            FeatureStoreOutput = list(
              FeatureGroupName = "string"
            ),
            AppManaged = TRUE|FALSE
          )
        ),
        KmsKeyId = "string"
      ),
      ProcessingJobName = "string",
      ProcessingResources = list(
        ClusterConfig = list(
          InstanceCount = 123,
          InstanceType = "ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge",
          VolumeSizeInGB = 123,
          VolumeKmsKeyId = "string"
        )
      ),
      StoppingCondition = list(
        MaxRuntimeInSeconds = 123
      ),
      AppSpecification = list(
        ImageUri = "string",
        ContainerEntrypoint = list(
          "string"
        ),
        ContainerArguments = list(
          "string"
        )
      ),
      Environment = list(
        "string"
      ),
      NetworkConfig = list(
        EnableInterContainerTrafficEncryption = TRUE|FALSE,
        EnableNetworkIsolation = TRUE|FALSE,
        VpcConfig = list(
          SecurityGroupIds = list(
            "string"
          ),
          Subnets = list(
            "string"
          )
        )
      ),
      RoleArn = "string",
      ExperimentConfig = list(
        ExperimentName = "string",
        TrialName = "string",
        TrialComponentDisplayName = "string",
        RunName = "string"
      ),
      ProcessingJobArn = "string",
      ProcessingJobStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
      ExitMessage = "string",
      FailureReason = "string",
      ProcessingEndTime = as.POSIXct(
        "2015-01-01"
      ),
      ProcessingStartTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      MonitoringScheduleArn = "string",
      AutoMLJobArn = "string",
      TrainingJobArn = "string"
    )

### Request syntax

    svc$describe_processing_job(
      ProcessingJobName = "string"
    )
