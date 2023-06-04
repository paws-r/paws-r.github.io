<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_hyper_parameter_tuning_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of a hyperparameter tuning job, depending on the fields selected

### Description

Returns a description of a hyperparameter tuning job, depending on the
fields selected. These fields can include the name, Amazon Resource Name
(ARN), job status of your tuning job and more.

### Usage

    sagemaker_describe_hyper_parameter_tuning_job(
      HyperParameterTuningJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_hyper_parameter_tuning_job_:_HyperParameterTuningJobName">HyperParameterTuningJobName</code></td>
<td><p>[required] The name of the tuning job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HyperParameterTuningJobName = "string",
      HyperParameterTuningJobArn = "string",
      HyperParameterTuningJobConfig = list(
        Strategy = "Bayesian"|"Random"|"Hyperband"|"Grid",
        StrategyConfig = list(
          HyperbandStrategyConfig = list(
            MinResource = 123,
            MaxResource = 123
          )
        ),
        HyperParameterTuningJobObjective = list(
          Type = "Maximize"|"Minimize",
          MetricName = "string"
        ),
        ResourceLimits = list(
          MaxNumberOfTrainingJobs = 123,
          MaxParallelTrainingJobs = 123,
          MaxRuntimeInSeconds = 123
        ),
        ParameterRanges = list(
          IntegerParameterRanges = list(
            list(
              Name = "string",
              MinValue = "string",
              MaxValue = "string",
              ScalingType = "Auto"|"Linear"|"Logarithmic"|"ReverseLogarithmic"
            )
          ),
          ContinuousParameterRanges = list(
            list(
              Name = "string",
              MinValue = "string",
              MaxValue = "string",
              ScalingType = "Auto"|"Linear"|"Logarithmic"|"ReverseLogarithmic"
            )
          ),
          CategoricalParameterRanges = list(
            list(
              Name = "string",
              Values = list(
                "string"
              )
            )
          ),
          AutoParameters = list(
            list(
              Name = "string",
              ValueHint = "string"
            )
          )
        ),
        TrainingJobEarlyStoppingType = "Off"|"Auto",
        TuningJobCompletionCriteria = list(
          TargetObjectiveMetricValue = 123.0,
          BestObjectiveNotImproving = list(
            MaxNumberOfTrainingJobsNotImproving = 123
          ),
          ConvergenceDetected = list(
            CompleteOnConvergence = "Disabled"|"Enabled"
          )
        ),
        RandomSeed = 123
      ),
      TrainingJobDefinition = list(
        DefinitionName = "string",
        TuningObjective = list(
          Type = "Maximize"|"Minimize",
          MetricName = "string"
        ),
        HyperParameterRanges = list(
          IntegerParameterRanges = list(
            list(
              Name = "string",
              MinValue = "string",
              MaxValue = "string",
              ScalingType = "Auto"|"Linear"|"Logarithmic"|"ReverseLogarithmic"
            )
          ),
          ContinuousParameterRanges = list(
            list(
              Name = "string",
              MinValue = "string",
              MaxValue = "string",
              ScalingType = "Auto"|"Linear"|"Logarithmic"|"ReverseLogarithmic"
            )
          ),
          CategoricalParameterRanges = list(
            list(
              Name = "string",
              Values = list(
                "string"
              )
            )
          ),
          AutoParameters = list(
            list(
              Name = "string",
              ValueHint = "string"
            )
          )
        ),
        StaticHyperParameters = list(
          "string"
        ),
        AlgorithmSpecification = list(
          TrainingImage = "string",
          TrainingInputMode = "Pipe"|"File"|"FastFile",
          AlgorithmName = "string",
          MetricDefinitions = list(
            list(
              Name = "string",
              Regex = "string"
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
        VpcConfig = list(
          SecurityGroupIds = list(
            "string"
          ),
          Subnets = list(
            "string"
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
        StoppingCondition = list(
          MaxRuntimeInSeconds = 123,
          MaxWaitTimeInSeconds = 123
        ),
        EnableNetworkIsolation = TRUE|FALSE,
        EnableInterContainerTrafficEncryption = TRUE|FALSE,
        EnableManagedSpotTraining = TRUE|FALSE,
        CheckpointConfig = list(
          S3Uri = "string",
          LocalPath = "string"
        ),
        RetryStrategy = list(
          MaximumRetryAttempts = 123
        ),
        HyperParameterTuningResourceConfig = list(
          InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.p4d.24xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5n.xlarge"|"ml.c5n.2xlarge"|"ml.c5n.4xlarge"|"ml.c5n.9xlarge"|"ml.c5n.18xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge",
          InstanceCount = 123,
          VolumeSizeInGB = 123,
          VolumeKmsKeyId = "string",
          AllocationStrategy = "Prioritized",
          InstanceConfigs = list(
            list(
              InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.p4d.24xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5n.xlarge"|"ml.c5n.2xlarge"|"ml.c5n.4xlarge"|"ml.c5n.9xlarge"|"ml.c5n.18xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge",
              InstanceCount = 123,
              VolumeSizeInGB = 123
            )
          )
        ),
        Environment = list(
          "string"
        )
      ),
      TrainingJobDefinitions = list(
        list(
          DefinitionName = "string",
          TuningObjective = list(
            Type = "Maximize"|"Minimize",
            MetricName = "string"
          ),
          HyperParameterRanges = list(
            IntegerParameterRanges = list(
              list(
                Name = "string",
                MinValue = "string",
                MaxValue = "string",
                ScalingType = "Auto"|"Linear"|"Logarithmic"|"ReverseLogarithmic"
              )
            ),
            ContinuousParameterRanges = list(
              list(
                Name = "string",
                MinValue = "string",
                MaxValue = "string",
                ScalingType = "Auto"|"Linear"|"Logarithmic"|"ReverseLogarithmic"
              )
            ),
            CategoricalParameterRanges = list(
              list(
                Name = "string",
                Values = list(
                  "string"
                )
              )
            ),
            AutoParameters = list(
              list(
                Name = "string",
                ValueHint = "string"
              )
            )
          ),
          StaticHyperParameters = list(
            "string"
          ),
          AlgorithmSpecification = list(
            TrainingImage = "string",
            TrainingInputMode = "Pipe"|"File"|"FastFile",
            AlgorithmName = "string",
            MetricDefinitions = list(
              list(
                Name = "string",
                Regex = "string"
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
          VpcConfig = list(
            SecurityGroupIds = list(
              "string"
            ),
            Subnets = list(
              "string"
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
          StoppingCondition = list(
            MaxRuntimeInSeconds = 123,
            MaxWaitTimeInSeconds = 123
          ),
          EnableNetworkIsolation = TRUE|FALSE,
          EnableInterContainerTrafficEncryption = TRUE|FALSE,
          EnableManagedSpotTraining = TRUE|FALSE,
          CheckpointConfig = list(
            S3Uri = "string",
            LocalPath = "string"
          ),
          RetryStrategy = list(
            MaximumRetryAttempts = 123
          ),
          HyperParameterTuningResourceConfig = list(
            InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.p4d.24xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5n.xlarge"|"ml.c5n.2xlarge"|"ml.c5n.4xlarge"|"ml.c5n.9xlarge"|"ml.c5n.18xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge",
            InstanceCount = 123,
            VolumeSizeInGB = 123,
            VolumeKmsKeyId = "string",
            AllocationStrategy = "Prioritized",
            InstanceConfigs = list(
              list(
                InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.p4d.24xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5n.xlarge"|"ml.c5n.2xlarge"|"ml.c5n.4xlarge"|"ml.c5n.9xlarge"|"ml.c5n.18xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge",
                InstanceCount = 123,
                VolumeSizeInGB = 123
              )
            )
          ),
          Environment = list(
            "string"
          )
        )
      ),
      HyperParameterTuningJobStatus = "Completed"|"InProgress"|"Failed"|"Stopped"|"Stopping",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      HyperParameterTuningEndTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      TrainingJobStatusCounters = list(
        Completed = 123,
        InProgress = 123,
        RetryableError = 123,
        NonRetryableError = 123,
        Stopped = 123
      ),
      ObjectiveStatusCounters = list(
        Succeeded = 123,
        Pending = 123,
        Failed = 123
      ),
      BestTrainingJob = list(
        TrainingJobDefinitionName = "string",
        TrainingJobName = "string",
        TrainingJobArn = "string",
        TuningJobName = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        TrainingStartTime = as.POSIXct(
          "2015-01-01"
        ),
        TrainingEndTime = as.POSIXct(
          "2015-01-01"
        ),
        TrainingJobStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
        TunedHyperParameters = list(
          "string"
        ),
        FailureReason = "string",
        FinalHyperParameterTuningJobObjectiveMetric = list(
          Type = "Maximize"|"Minimize",
          MetricName = "string",
          Value = 123.0
        ),
        ObjectiveStatus = "Succeeded"|"Pending"|"Failed"
      ),
      OverallBestTrainingJob = list(
        TrainingJobDefinitionName = "string",
        TrainingJobName = "string",
        TrainingJobArn = "string",
        TuningJobName = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        TrainingStartTime = as.POSIXct(
          "2015-01-01"
        ),
        TrainingEndTime = as.POSIXct(
          "2015-01-01"
        ),
        TrainingJobStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
        TunedHyperParameters = list(
          "string"
        ),
        FailureReason = "string",
        FinalHyperParameterTuningJobObjectiveMetric = list(
          Type = "Maximize"|"Minimize",
          MetricName = "string",
          Value = 123.0
        ),
        ObjectiveStatus = "Succeeded"|"Pending"|"Failed"
      ),
      WarmStartConfig = list(
        ParentHyperParameterTuningJobs = list(
          list(
            HyperParameterTuningJobName = "string"
          )
        ),
        WarmStartType = "IdenticalDataAndAlgorithm"|"TransferLearning"
      ),
      FailureReason = "string",
      TuningJobCompletionDetails = list(
        NumberOfTrainingJobsObjectiveNotImproving = 123,
        ConvergenceDetectedTime = as.POSIXct(
          "2015-01-01"
        )
      ),
      ConsumedResources = list(
        RuntimeInSeconds = 123
      ),
      Autotune = list(
        Mode = "Enabled"
      )
    )

### Request syntax

    svc$describe_hyper_parameter_tuning_job(
      HyperParameterTuningJobName = "string"
    )
