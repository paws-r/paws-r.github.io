<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_algorithm</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of the specified algorithm that is in your account

### Description

Returns a description of the specified algorithm that is in your
account.

### Usage

    sagemaker_describe_algorithm(AlgorithmName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_algorithm_:_AlgorithmName">AlgorithmName</code></td>
<td><p>[required] The name of the algorithm to describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AlgorithmName = "string",
      AlgorithmArn = "string",
      AlgorithmDescription = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      TrainingSpecification = list(
        TrainingImage = "string",
        TrainingImageDigest = "string",
        SupportedHyperParameters = list(
          list(
            Name = "string",
            Description = "string",
            Type = "Integer"|"Continuous"|"Categorical"|"FreeText",
            Range = list(
              IntegerParameterRangeSpecification = list(
                MinValue = "string",
                MaxValue = "string"
              ),
              ContinuousParameterRangeSpecification = list(
                MinValue = "string",
                MaxValue = "string"
              ),
              CategoricalParameterRangeSpecification = list(
                Values = list(
                  "string"
                )
              )
            ),
            IsTunable = TRUE|FALSE,
            IsRequired = TRUE|FALSE,
            DefaultValue = "string"
          )
        ),
        SupportedTrainingInstanceTypes = list(
          "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.p3dn.24xlarge"|"ml.p4d.24xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5n.xlarge"|"ml.c5n.2xlarge"|"ml.c5n.4xlarge"|"ml.c5n.9xlarge"|"ml.c5n.18xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.16xlarge"|"ml.g5.12xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge"
        ),
        SupportsDistributedTraining = TRUE|FALSE,
        MetricDefinitions = list(
          list(
            Name = "string",
            Regex = "string"
          )
        ),
        TrainingChannels = list(
          list(
            Name = "string",
            Description = "string",
            IsRequired = TRUE|FALSE,
            SupportedContentTypes = list(
              "string"
            ),
            SupportedCompressionTypes = list(
              "None"|"Gzip"
            ),
            SupportedInputModes = list(
              "Pipe"|"File"|"FastFile"
            )
          )
        ),
        SupportedTuningJobObjectiveMetrics = list(
          list(
            Type = "Maximize"|"Minimize",
            MetricName = "string"
          )
        )
      ),
      InferenceSpecification = list(
        Containers = list(
          list(
            ContainerHostname = "string",
            Image = "string",
            ImageDigest = "string",
            ModelDataUrl = "string",
            ProductId = "string",
            Environment = list(
              "string"
            ),
            ModelInput = list(
              DataInputConfig = "string"
            ),
            Framework = "string",
            FrameworkVersion = "string",
            NearestModelName = "string"
          )
        ),
        SupportedTransformInstanceTypes = list(
          "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"
        ),
        SupportedRealtimeInferenceInstanceTypes = list(
          "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.12xlarge"|"ml.m5d.24xlarge"|"ml.c4.large"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.large"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.12xlarge"|"ml.r5.24xlarge"|"ml.r5d.large"|"ml.r5d.xlarge"|"ml.r5d.2xlarge"|"ml.r5d.4xlarge"|"ml.r5d.12xlarge"|"ml.r5d.24xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.c6i.large"|"ml.c6i.xlarge"|"ml.c6i.2xlarge"|"ml.c6i.4xlarge"|"ml.c6i.8xlarge"|"ml.c6i.12xlarge"|"ml.c6i.16xlarge"|"ml.c6i.24xlarge"|"ml.c6i.32xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.12xlarge"|"ml.g5.16xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.p4d.24xlarge"|"ml.c7g.large"|"ml.c7g.xlarge"|"ml.c7g.2xlarge"|"ml.c7g.4xlarge"|"ml.c7g.8xlarge"|"ml.c7g.12xlarge"|"ml.c7g.16xlarge"|"ml.m6g.large"|"ml.m6g.xlarge"|"ml.m6g.2xlarge"|"ml.m6g.4xlarge"|"ml.m6g.8xlarge"|"ml.m6g.12xlarge"|"ml.m6g.16xlarge"|"ml.m6gd.large"|"ml.m6gd.xlarge"|"ml.m6gd.2xlarge"|"ml.m6gd.4xlarge"|"ml.m6gd.8xlarge"|"ml.m6gd.12xlarge"|"ml.m6gd.16xlarge"|"ml.c6g.large"|"ml.c6g.xlarge"|"ml.c6g.2xlarge"|"ml.c6g.4xlarge"|"ml.c6g.8xlarge"|"ml.c6g.12xlarge"|"ml.c6g.16xlarge"|"ml.c6gd.large"|"ml.c6gd.xlarge"|"ml.c6gd.2xlarge"|"ml.c6gd.4xlarge"|"ml.c6gd.8xlarge"|"ml.c6gd.12xlarge"|"ml.c6gd.16xlarge"|"ml.c6gn.large"|"ml.c6gn.xlarge"|"ml.c6gn.2xlarge"|"ml.c6gn.4xlarge"|"ml.c6gn.8xlarge"|"ml.c6gn.12xlarge"|"ml.c6gn.16xlarge"|"ml.r6g.large"|"ml.r6g.xlarge"|"ml.r6g.2xlarge"|"ml.r6g.4xlarge"|"ml.r6g.8xlarge"|"ml.r6g.12xlarge"|"ml.r6g.16xlarge"|"ml.r6gd.large"|"ml.r6gd.xlarge"|"ml.r6gd.2xlarge"|"ml.r6gd.4xlarge"|"ml.r6gd.8xlarge"|"ml.r6gd.12xlarge"|"ml.r6gd.16xlarge"|"ml.p4de.24xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge"|"ml.inf2.xlarge"|"ml.inf2.8xlarge"|"ml.inf2.24xlarge"|"ml.inf2.48xlarge"
        ),
        SupportedContentTypes = list(
          "string"
        ),
        SupportedResponseMIMETypes = list(
          "string"
        )
      ),
      ValidationSpecification = list(
        ValidationRole = "string",
        ValidationProfiles = list(
          list(
            ProfileName = "string",
            TrainingJobDefinition = list(
              TrainingInputMode = "Pipe"|"File"|"FastFile",
              HyperParameters = list(
                "string"
              ),
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
              StoppingCondition = list(
                MaxRuntimeInSeconds = 123,
                MaxWaitTimeInSeconds = 123
              )
            ),
            TransformJobDefinition = list(
              MaxConcurrentTransforms = 123,
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
              TransformResources = list(
                InstanceType = "ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge",
                InstanceCount = 123,
                VolumeKmsKeyId = "string"
              )
            )
          )
        )
      ),
      AlgorithmStatus = "Pending"|"InProgress"|"Completed"|"Failed"|"Deleting",
      AlgorithmStatusDetails = list(
        ValidationStatuses = list(
          list(
            Name = "string",
            Status = "NotStarted"|"InProgress"|"Completed"|"Failed",
            FailureReason = "string"
          )
        ),
        ImageScanStatuses = list(
          list(
            Name = "string",
            Status = "NotStarted"|"InProgress"|"Completed"|"Failed",
            FailureReason = "string"
          )
        )
      ),
      ProductId = "string",
      CertifyForMarketplace = TRUE|FALSE
    )

### Request syntax

    svc$describe_algorithm(
      AlgorithmName = "string"
    )
