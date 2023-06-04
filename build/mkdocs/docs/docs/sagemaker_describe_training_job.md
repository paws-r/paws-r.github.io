<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_training_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a training job

### Description

Returns information about a training job.

Some of the attributes below only appear if the training job
successfully starts. If the training job fails, `TrainingJobStatus` is
`Failed` and, depending on the `FailureReason`, attributes like
`TrainingStartTime`, `TrainingTimeInSeconds`, `TrainingEndTime`, and
`BillableTimeInSeconds` may not be present in the response.

### Usage

    sagemaker_describe_training_job(TrainingJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_training_job_:_TrainingJobName">TrainingJobName</code></td>
<td><p>[required] The name of the training job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrainingJobName = "string",
      TrainingJobArn = "string",
      TuningJobArn = "string",
      LabelingJobArn = "string",
      AutoMLJobArn = "string",
      ModelArtifacts = list(
        S3ModelArtifacts = "string"
      ),
      TrainingJobStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
      SecondaryStatus = "Starting"|"LaunchingMLInstances"|"PreparingTrainingStack"|"Downloading"|"DownloadingTrainingImage"|"Training"|"Uploading"|"Stopping"|"Stopped"|"MaxRuntimeExceeded"|"Completed"|"Failed"|"Interrupted"|"MaxWaitTimeExceeded"|"Updating"|"Restarting",
      FailureReason = "string",
      HyperParameters = list(
        "string"
      ),
      AlgorithmSpecification = list(
        TrainingImage = "string",
        AlgorithmName = "string",
        TrainingInputMode = "Pipe"|"File"|"FastFile",
        MetricDefinitions = list(
          list(
            Name = "string",
            Regex = "string"
          )
        ),
        EnableSageMakerMetricsTimeSeries = TRUE|FALSE,
        ContainerEntrypoint = list(
          "string"
        ),
        ContainerArguments = list(
          "string"
        ),
        TrainingImageConfig = list(
          TrainingRepositoryAccessMode = "Platform"|"Vpc",
          TrainingRepositoryAuthConfig = list(
            TrainingRepositoryCredentialsProviderArn = "string"
          )
        )
      ),
      RoleArn = "string",
      InputDataConfig = list(
        list(
          ChannelName = "string",
          DataSource = list(
            S3DataSource = list(
              S3DataType = "ManifestFile"|"S3Prefix"|"AugmentedManifestFile",
              S3Uri = "string",
              S3DataDistributionType = "FullyReplicated"|"ShardedByS3Key",
              AttributeNames = list(
                "string"
              ),
              InstanceGroupNames = list(
                "string"
              )
            ),
            FileSystemDataSource = list(
              FileSystemId = "string",
              FileSystemAccessMode = "rw"|"ro",
              FileSystemType = "EFS"|"FSxLustre",
              DirectoryPath = "string"
            )
          ),
          ContentType = "string",
          CompressionType = "None"|"Gzip",
          RecordWrapperType = "None"|"RecordIO",
          InputMode = "Pipe"|"File"|"FastFile",
          ShuffleConfig = list(
            Seed = 123
          )
        )
      ),
      OutputDataConfig = list(
        KmsKeyId = "string",
        S3OutputPath = "string"
      ),
      ResourceConfig = list(
        InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.p4d.24xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5n.xlarge"|"ml.c5n.2xlarge"|"ml.c5n.4xlarge"|"ml.c5n.9xlarge"|"ml.c5n.18xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge",
        InstanceCount = 123,
        VolumeSizeInGB = 123,
        VolumeKmsKeyId = "string",
        InstanceGroups = list(
          list(
            InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.p4d.24xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5n.xlarge"|"ml.c5n.2xlarge"|"ml.c5n.4xlarge"|"ml.c5n.9xlarge"|"ml.c5n.18xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge",
            InstanceCount = 123,
            InstanceGroupName = "string"
          )
        ),
        KeepAlivePeriodInSeconds = 123
      ),
      VpcConfig = list(
        SecurityGroupIds = list(
          "string"
        ),
        Subnets = list(
          "string"
        )
      ),
      StoppingCondition = list(
        MaxRuntimeInSeconds = 123,
        MaxWaitTimeInSeconds = 123
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      TrainingStartTime = as.POSIXct(
        "2015-01-01"
      ),
      TrainingEndTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      SecondaryStatusTransitions = list(
        list(
          Status = "Starting"|"LaunchingMLInstances"|"PreparingTrainingStack"|"Downloading"|"DownloadingTrainingImage"|"Training"|"Uploading"|"Stopping"|"Stopped"|"MaxRuntimeExceeded"|"Completed"|"Failed"|"Interrupted"|"MaxWaitTimeExceeded"|"Updating"|"Restarting",
          StartTime = as.POSIXct(
            "2015-01-01"
          ),
          EndTime = as.POSIXct(
            "2015-01-01"
          ),
          StatusMessage = "string"
        )
      ),
      FinalMetricDataList = list(
        list(
          MetricName = "string",
          Value = 123.0,
          Timestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      EnableNetworkIsolation = TRUE|FALSE,
      EnableInterContainerTrafficEncryption = TRUE|FALSE,
      EnableManagedSpotTraining = TRUE|FALSE,
      CheckpointConfig = list(
        S3Uri = "string",
        LocalPath = "string"
      ),
      TrainingTimeInSeconds = 123,
      BillableTimeInSeconds = 123,
      DebugHookConfig = list(
        LocalPath = "string",
        S3OutputPath = "string",
        HookParameters = list(
          "string"
        ),
        CollectionConfigurations = list(
          list(
            CollectionName = "string",
            CollectionParameters = list(
              "string"
            )
          )
        )
      ),
      ExperimentConfig = list(
        ExperimentName = "string",
        TrialName = "string",
        TrialComponentDisplayName = "string",
        RunName = "string"
      ),
      DebugRuleConfigurations = list(
        list(
          RuleConfigurationName = "string",
          LocalPath = "string",
          S3OutputPath = "string",
          RuleEvaluatorImage = "string",
          InstanceType = "ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge",
          VolumeSizeInGB = 123,
          RuleParameters = list(
            "string"
          )
        )
      ),
      TensorBoardOutputConfig = list(
        LocalPath = "string",
        S3OutputPath = "string"
      ),
      DebugRuleEvaluationStatuses = list(
        list(
          RuleConfigurationName = "string",
          RuleEvaluationJobArn = "string",
          RuleEvaluationStatus = "InProgress"|"NoIssuesFound"|"IssuesFound"|"Error"|"Stopping"|"Stopped",
          StatusDetails = "string",
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      ProfilerConfig = list(
        S3OutputPath = "string",
        ProfilingIntervalInMilliseconds = 123,
        ProfilingParameters = list(
          "string"
        ),
        DisableProfiler = TRUE|FALSE
      ),
      ProfilerRuleConfigurations = list(
        list(
          RuleConfigurationName = "string",
          LocalPath = "string",
          S3OutputPath = "string",
          RuleEvaluatorImage = "string",
          InstanceType = "ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge",
          VolumeSizeInGB = 123,
          RuleParameters = list(
            "string"
          )
        )
      ),
      ProfilerRuleEvaluationStatuses = list(
        list(
          RuleConfigurationName = "string",
          RuleEvaluationJobArn = "string",
          RuleEvaluationStatus = "InProgress"|"NoIssuesFound"|"IssuesFound"|"Error"|"Stopping"|"Stopped",
          StatusDetails = "string",
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      ProfilingStatus = "Enabled"|"Disabled",
      RetryStrategy = list(
        MaximumRetryAttempts = 123
      ),
      Environment = list(
        "string"
      ),
      WarmPoolStatus = list(
        Status = "Available"|"Terminated"|"Reused"|"InUse",
        ResourceRetainedBillableTimeInSeconds = 123,
        ReusedByJob = "string"
      )
    )

### Request syntax

    svc$describe_training_job(
      TrainingJobName = "string"
    )
