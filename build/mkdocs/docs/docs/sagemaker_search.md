<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_search</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Finds SageMaker resources that match a search query

### Description

Finds SageMaker resources that match a search query. Matching resources
are returned as a list of `SearchRecord` objects in the response. You
can sort the search results by any resource property in a ascending or
descending order.

You can query against the following value types: numeric, text, Boolean,
and timestamp.

The Search API may provide access to otherwise restricted data. See
[Amazon SageMaker API Permissions: Actions, Permissions, and Resources
Reference](https://docs.aws.amazon.com/sagemaker/latest/dg/api-permissions-reference.html)
for more information.

### Usage

    sagemaker_search(Resource, SearchExpression, SortBy, SortOrder,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sagemaker_search_:_Resource">Resource</code></td>
<td><p>[required] The name of the SageMaker resource to search
for.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_search_:_SearchExpression">SearchExpression</code></td>
<td><p>A Boolean conditional statement. Resources must satisfy this
condition to be included in search results. You must provide at least
one subexpression, filter, or nested filter. The maximum number of
recursive <code>SubExpressions</code>, <code>NestedFilters</code>, and
<code>Filters</code> that can be included in a
<code>SearchExpression</code> object is 50.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_search_:_SortBy">SortBy</code></td>
<td><p>The name of the resource property used to sort the
<code>SearchResults</code>. The default is
<code>LastModifiedTime</code>.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_search_:_SortOrder">SortOrder</code></td>
<td><p>How <code>SearchResults</code> are ordered. Valid values are
<code>Ascending</code> or <code>Descending</code>. The default is
<code>Descending</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_search_:_NextToken">NextToken</code></td>
<td><p>If more than <code>MaxResults</code> resources match the
specified <code>SearchExpression</code>, the response includes a
<code>NextToken</code>. The <code>NextToken</code> can be passed to the
next <code>SearchRequest</code> to continue retrieving results.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_search_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Results = list(
        list(
          TrainingJob = list(
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
            Environment = list(
              "string"
            ),
            RetryStrategy = list(
              MaximumRetryAttempts = 123
            ),
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            )
          ),
          Experiment = list(
            ExperimentName = "string",
            ExperimentArn = "string",
            DisplayName = "string",
            Source = list(
              SourceArn = "string",
              SourceType = "string"
            ),
            Description = "string",
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            CreatedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            LastModifiedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            )
          ),
          Trial = list(
            TrialName = "string",
            TrialArn = "string",
            DisplayName = "string",
            ExperimentName = "string",
            Source = list(
              SourceArn = "string",
              SourceType = "string"
            ),
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            CreatedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            LastModifiedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            MetadataProperties = list(
              CommitId = "string",
              Repository = "string",
              GeneratedBy = "string",
              ProjectId = "string"
            ),
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            ),
            TrialComponentSummaries = list(
              list(
                TrialComponentName = "string",
                TrialComponentArn = "string",
                TrialComponentSource = list(
                  SourceArn = "string",
                  SourceType = "string"
                ),
                CreationTime = as.POSIXct(
                  "2015-01-01"
                ),
                CreatedBy = list(
                  UserProfileArn = "string",
                  UserProfileName = "string",
                  DomainId = "string",
                  IamIdentity = list(
                    Arn = "string",
                    PrincipalId = "string",
                    SourceIdentity = "string"
                  )
                )
              )
            )
          ),
          TrialComponent = list(
            TrialComponentName = "string",
            DisplayName = "string",
            TrialComponentArn = "string",
            Source = list(
              SourceArn = "string",
              SourceType = "string"
            ),
            Status = list(
              PrimaryStatus = "InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
              Message = "string"
            ),
            StartTime = as.POSIXct(
              "2015-01-01"
            ),
            EndTime = as.POSIXct(
              "2015-01-01"
            ),
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            CreatedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            LastModifiedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            Parameters = list(
              list(
                StringValue = "string",
                NumberValue = 123.0
              )
            ),
            InputArtifacts = list(
              list(
                MediaType = "string",
                Value = "string"
              )
            ),
            OutputArtifacts = list(
              list(
                MediaType = "string",
                Value = "string"
              )
            ),
            Metrics = list(
              list(
                MetricName = "string",
                SourceArn = "string",
                TimeStamp = as.POSIXct(
                  "2015-01-01"
                ),
                Max = 123.0,
                Min = 123.0,
                Last = 123.0,
                Count = 123,
                Avg = 123.0,
                StdDev = 123.0
              )
            ),
            MetadataProperties = list(
              CommitId = "string",
              Repository = "string",
              GeneratedBy = "string",
              ProjectId = "string"
            ),
            SourceDetail = list(
              SourceArn = "string",
              TrainingJob = list(
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
                Environment = list(
                  "string"
                ),
                RetryStrategy = list(
                  MaximumRetryAttempts = 123
                ),
                Tags = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                )
              ),
              ProcessingJob = list(
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
                TrainingJobArn = "string",
                Tags = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                )
              ),
              TransformJob = list(
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
                ),
                Tags = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                )
              )
            ),
            LineageGroupArn = "string",
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            ),
            Parents = list(
              list(
                TrialName = "string",
                ExperimentName = "string"
              )
            ),
            RunName = "string"
          ),
          Endpoint = list(
            EndpointName = "string",
            EndpointArn = "string",
            EndpointConfigName = "string",
            ProductionVariants = list(
              list(
                VariantName = "string",
                DeployedImages = list(
                  list(
                    SpecifiedImage = "string",
                    ResolvedImage = "string",
                    ResolutionTime = as.POSIXct(
                      "2015-01-01"
                    )
                  )
                ),
                CurrentWeight = 123.0,
                DesiredWeight = 123.0,
                CurrentInstanceCount = 123,
                DesiredInstanceCount = 123,
                VariantStatus = list(
                  list(
                    Status = "Creating"|"Updating"|"Deleting"|"ActivatingTraffic"|"Baking",
                    StatusMessage = "string",
                    StartTime = as.POSIXct(
                      "2015-01-01"
                    )
                  )
                ),
                CurrentServerlessConfig = list(
                  MemorySizeInMB = 123,
                  MaxConcurrency = 123,
                  ProvisionedConcurrency = 123
                ),
                DesiredServerlessConfig = list(
                  MemorySizeInMB = 123,
                  MaxConcurrency = 123,
                  ProvisionedConcurrency = 123
                )
              )
            ),
            DataCaptureConfig = list(
              EnableCapture = TRUE|FALSE,
              CaptureStatus = "Started"|"Stopped",
              CurrentSamplingPercentage = 123,
              DestinationS3Uri = "string",
              KmsKeyId = "string"
            ),
            EndpointStatus = "OutOfService"|"Creating"|"Updating"|"SystemUpdating"|"RollingBack"|"InService"|"Deleting"|"Failed",
            FailureReason = "string",
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            MonitoringSchedules = list(
              list(
                MonitoringScheduleArn = "string",
                MonitoringScheduleName = "string",
                MonitoringScheduleStatus = "Pending"|"Failed"|"Scheduled"|"Stopped",
                MonitoringType = "DataQuality"|"ModelQuality"|"ModelBias"|"ModelExplainability",
                FailureReason = "string",
                CreationTime = as.POSIXct(
                  "2015-01-01"
                ),
                LastModifiedTime = as.POSIXct(
                  "2015-01-01"
                ),
                MonitoringScheduleConfig = list(
                  ScheduleConfig = list(
                    ScheduleExpression = "string"
                  ),
                  MonitoringJobDefinition = list(
                    BaselineConfig = list(
                      BaseliningJobName = "string",
                      ConstraintsResource = list(
                        S3Uri = "string"
                      ),
                      StatisticsResource = list(
                        S3Uri = "string"
                      )
                    ),
                    MonitoringInputs = list(
                      list(
                        EndpointInput = list(
                          EndpointName = "string",
                          LocalPath = "string",
                          S3InputMode = "Pipe"|"File",
                          S3DataDistributionType = "FullyReplicated"|"ShardedByS3Key",
                          FeaturesAttribute = "string",
                          InferenceAttribute = "string",
                          ProbabilityAttribute = "string",
                          ProbabilityThresholdAttribute = 123.0,
                          StartTimeOffset = "string",
                          EndTimeOffset = "string"
                        ),
                        BatchTransformInput = list(
                          DataCapturedDestinationS3Uri = "string",
                          DatasetFormat = list(
                            Csv = list(
                              Header = TRUE|FALSE
                            ),
                            Json = list(
                              Line = TRUE|FALSE
                            ),
                            Parquet = list()
                          ),
                          LocalPath = "string",
                          S3InputMode = "Pipe"|"File",
                          S3DataDistributionType = "FullyReplicated"|"ShardedByS3Key",
                          FeaturesAttribute = "string",
                          InferenceAttribute = "string",
                          ProbabilityAttribute = "string",
                          ProbabilityThresholdAttribute = 123.0,
                          StartTimeOffset = "string",
                          EndTimeOffset = "string"
                        )
                      )
                    ),
                    MonitoringOutputConfig = list(
                      MonitoringOutputs = list(
                        list(
                          S3Output = list(
                            S3Uri = "string",
                            LocalPath = "string",
                            S3UploadMode = "Continuous"|"EndOfJob"
                          )
                        )
                      ),
                      KmsKeyId = "string"
                    ),
                    MonitoringResources = list(
                      ClusterConfig = list(
                        InstanceCount = 123,
                        InstanceType = "ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge",
                        VolumeSizeInGB = 123,
                        VolumeKmsKeyId = "string"
                      )
                    ),
                    MonitoringAppSpecification = list(
                      ImageUri = "string",
                      ContainerEntrypoint = list(
                        "string"
                      ),
                      ContainerArguments = list(
                        "string"
                      ),
                      RecordPreprocessorSourceUri = "string",
                      PostAnalyticsProcessorSourceUri = "string"
                    ),
                    StoppingCondition = list(
                      MaxRuntimeInSeconds = 123
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
                    RoleArn = "string"
                  ),
                  MonitoringJobDefinitionName = "string",
                  MonitoringType = "DataQuality"|"ModelQuality"|"ModelBias"|"ModelExplainability"
                ),
                EndpointName = "string",
                LastMonitoringExecutionSummary = list(
                  MonitoringScheduleName = "string",
                  ScheduledTime = as.POSIXct(
                    "2015-01-01"
                  ),
                  CreationTime = as.POSIXct(
                    "2015-01-01"
                  ),
                  LastModifiedTime = as.POSIXct(
                    "2015-01-01"
                  ),
                  MonitoringExecutionStatus = "Pending"|"Completed"|"CompletedWithViolations"|"InProgress"|"Failed"|"Stopping"|"Stopped",
                  ProcessingJobArn = "string",
                  EndpointName = "string",
                  FailureReason = "string",
                  MonitoringJobDefinitionName = "string",
                  MonitoringType = "DataQuality"|"ModelQuality"|"ModelBias"|"ModelExplainability"
                ),
                Tags = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                )
              )
            ),
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            ),
            ShadowProductionVariants = list(
              list(
                VariantName = "string",
                DeployedImages = list(
                  list(
                    SpecifiedImage = "string",
                    ResolvedImage = "string",
                    ResolutionTime = as.POSIXct(
                      "2015-01-01"
                    )
                  )
                ),
                CurrentWeight = 123.0,
                DesiredWeight = 123.0,
                CurrentInstanceCount = 123,
                DesiredInstanceCount = 123,
                VariantStatus = list(
                  list(
                    Status = "Creating"|"Updating"|"Deleting"|"ActivatingTraffic"|"Baking",
                    StatusMessage = "string",
                    StartTime = as.POSIXct(
                      "2015-01-01"
                    )
                  )
                ),
                CurrentServerlessConfig = list(
                  MemorySizeInMB = 123,
                  MaxConcurrency = 123,
                  ProvisionedConcurrency = 123
                ),
                DesiredServerlessConfig = list(
                  MemorySizeInMB = 123,
                  MaxConcurrency = 123,
                  ProvisionedConcurrency = 123
                )
              )
            )
          ),
          ModelPackage = list(
            ModelPackageName = "string",
            ModelPackageGroupName = "string",
            ModelPackageVersion = 123,
            ModelPackageArn = "string",
            ModelPackageDescription = "string",
            CreationTime = as.POSIXct(
              "2015-01-01"
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
            SourceAlgorithmSpecification = list(
              SourceAlgorithms = list(
                list(
                  ModelDataUrl = "string",
                  AlgorithmName = "string"
                )
              )
            ),
            ValidationSpecification = list(
              ValidationRole = "string",
              ValidationProfiles = list(
                list(
                  ProfileName = "string",
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
            ModelPackageStatus = "Pending"|"InProgress"|"Completed"|"Failed"|"Deleting",
            ModelPackageStatusDetails = list(
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
            CertifyForMarketplace = TRUE|FALSE,
            ModelApprovalStatus = "Approved"|"Rejected"|"PendingManualApproval",
            CreatedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            MetadataProperties = list(
              CommitId = "string",
              Repository = "string",
              GeneratedBy = "string",
              ProjectId = "string"
            ),
            ModelMetrics = list(
              ModelQuality = list(
                Statistics = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                ),
                Constraints = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                )
              ),
              ModelDataQuality = list(
                Statistics = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                ),
                Constraints = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                )
              ),
              Bias = list(
                Report = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                ),
                PreTrainingReport = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                ),
                PostTrainingReport = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                )
              ),
              Explainability = list(
                Report = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                )
              )
            ),
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            LastModifiedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            ApprovalDescription = "string",
            Domain = "string",
            Task = "string",
            SamplePayloadUrl = "string",
            AdditionalInferenceSpecifications = list(
              list(
                Name = "string",
                Description = "string",
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
              )
            ),
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            ),
            CustomerMetadataProperties = list(
              "string"
            ),
            DriftCheckBaselines = list(
              Bias = list(
                ConfigFile = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                ),
                PreTrainingConstraints = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                ),
                PostTrainingConstraints = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                )
              ),
              Explainability = list(
                Constraints = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                ),
                ConfigFile = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                )
              ),
              ModelQuality = list(
                Statistics = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                ),
                Constraints = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                )
              ),
              ModelDataQuality = list(
                Statistics = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                ),
                Constraints = list(
                  ContentType = "string",
                  ContentDigest = "string",
                  S3Uri = "string"
                )
              )
            )
          ),
          ModelPackageGroup = list(
            ModelPackageGroupName = "string",
            ModelPackageGroupArn = "string",
            ModelPackageGroupDescription = "string",
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            CreatedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            ModelPackageGroupStatus = "Pending"|"InProgress"|"Completed"|"Failed"|"Deleting"|"DeleteFailed",
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            )
          ),
          Pipeline = list(
            PipelineArn = "string",
            PipelineName = "string",
            PipelineDisplayName = "string",
            PipelineDescription = "string",
            RoleArn = "string",
            PipelineStatus = "Active",
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            LastRunTime = as.POSIXct(
              "2015-01-01"
            ),
            CreatedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            LastModifiedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            ParallelismConfiguration = list(
              MaxParallelExecutionSteps = 123
            ),
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            )
          ),
          PipelineExecution = list(
            PipelineArn = "string",
            PipelineExecutionArn = "string",
            PipelineExecutionDisplayName = "string",
            PipelineExecutionStatus = "Executing"|"Stopping"|"Stopped"|"Failed"|"Succeeded",
            PipelineExecutionDescription = "string",
            PipelineExperimentConfig = list(
              ExperimentName = "string",
              TrialName = "string"
            ),
            FailureReason = "string",
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            CreatedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            LastModifiedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            ParallelismConfiguration = list(
              MaxParallelExecutionSteps = 123
            ),
            PipelineParameters = list(
              list(
                Name = "string",
                Value = "string"
              )
            )
          ),
          FeatureGroup = list(
            FeatureGroupArn = "string",
            FeatureGroupName = "string",
            RecordIdentifierFeatureName = "string",
            EventTimeFeatureName = "string",
            FeatureDefinitions = list(
              list(
                FeatureName = "string",
                FeatureType = "Integral"|"Fractional"|"String"
              )
            ),
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            OnlineStoreConfig = list(
              SecurityConfig = list(
                KmsKeyId = "string"
              ),
              EnableOnlineStore = TRUE|FALSE
            ),
            OfflineStoreConfig = list(
              S3StorageConfig = list(
                S3Uri = "string",
                KmsKeyId = "string",
                ResolvedOutputS3Uri = "string"
              ),
              DisableGlueTableCreation = TRUE|FALSE,
              DataCatalogConfig = list(
                TableName = "string",
                Catalog = "string",
                Database = "string"
              ),
              TableFormat = "Glue"|"Iceberg"
            ),
            RoleArn = "string",
            FeatureGroupStatus = "Creating"|"Created"|"CreateFailed"|"Deleting"|"DeleteFailed",
            OfflineStoreStatus = list(
              Status = "Active"|"Blocked"|"Disabled",
              BlockedReason = "string"
            ),
            LastUpdateStatus = list(
              Status = "Successful"|"Failed"|"InProgress",
              FailureReason = "string"
            ),
            FailureReason = "string",
            Description = "string",
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            )
          ),
          Project = list(
            ProjectArn = "string",
            ProjectName = "string",
            ProjectId = "string",
            ProjectDescription = "string",
            ServiceCatalogProvisioningDetails = list(
              ProductId = "string",
              ProvisioningArtifactId = "string",
              PathId = "string",
              ProvisioningParameters = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              )
            ),
            ServiceCatalogProvisionedProductDetails = list(
              ProvisionedProductId = "string",
              ProvisionedProductStatusMessage = "string"
            ),
            ProjectStatus = "Pending"|"CreateInProgress"|"CreateCompleted"|"CreateFailed"|"DeleteInProgress"|"DeleteFailed"|"DeleteCompleted"|"UpdateInProgress"|"UpdateCompleted"|"UpdateFailed",
            CreatedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            ),
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            LastModifiedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            )
          ),
          FeatureMetadata = list(
            FeatureGroupArn = "string",
            FeatureGroupName = "string",
            FeatureName = "string",
            FeatureType = "Integral"|"Fractional"|"String",
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            Description = "string",
            Parameters = list(
              list(
                Key = "string",
                Value = "string"
              )
            )
          ),
          HyperParameterTuningJob = list(
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
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            ),
            TuningJobCompletionDetails = list(
              NumberOfTrainingJobsObjectiveNotImproving = 123,
              ConvergenceDetectedTime = as.POSIXct(
                "2015-01-01"
              )
            ),
            ConsumedResources = list(
              RuntimeInSeconds = 123
            )
          ),
          Model = list(
            Model = list(
              ModelName = "string",
              PrimaryContainer = list(
                ContainerHostname = "string",
                Image = "string",
                ImageConfig = list(
                  RepositoryAccessMode = "Platform"|"Vpc",
                  RepositoryAuthConfig = list(
                    RepositoryCredentialsProviderArn = "string"
                  )
                ),
                Mode = "SingleModel"|"MultiModel",
                ModelDataUrl = "string",
                Environment = list(
                  "string"
                ),
                ModelPackageName = "string",
                InferenceSpecificationName = "string",
                MultiModelConfig = list(
                  ModelCacheSetting = "Enabled"|"Disabled"
                )
              ),
              Containers = list(
                list(
                  ContainerHostname = "string",
                  Image = "string",
                  ImageConfig = list(
                    RepositoryAccessMode = "Platform"|"Vpc",
                    RepositoryAuthConfig = list(
                      RepositoryCredentialsProviderArn = "string"
                    )
                  ),
                  Mode = "SingleModel"|"MultiModel",
                  ModelDataUrl = "string",
                  Environment = list(
                    "string"
                  ),
                  ModelPackageName = "string",
                  InferenceSpecificationName = "string",
                  MultiModelConfig = list(
                    ModelCacheSetting = "Enabled"|"Disabled"
                  )
                )
              ),
              InferenceExecutionConfig = list(
                Mode = "Serial"|"Direct"
              ),
              ExecutionRoleArn = "string",
              VpcConfig = list(
                SecurityGroupIds = list(
                  "string"
                ),
                Subnets = list(
                  "string"
                )
              ),
              CreationTime = as.POSIXct(
                "2015-01-01"
              ),
              ModelArn = "string",
              EnableNetworkIsolation = TRUE|FALSE,
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              ),
              DeploymentRecommendation = list(
                RecommendationStatus = "IN_PROGRESS"|"COMPLETED"|"FAILED"|"NOT_APPLICABLE",
                RealTimeInferenceRecommendations = list(
                  list(
                    RecommendationId = "string",
                    InstanceType = "ml.t2.medium"|"ml.t2.large"|"ml.t2.xlarge"|"ml.t2.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.m5d.large"|"ml.m5d.xlarge"|"ml.m5d.2xlarge"|"ml.m5d.4xlarge"|"ml.m5d.12xlarge"|"ml.m5d.24xlarge"|"ml.c4.large"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.large"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.c5d.large"|"ml.c5d.xlarge"|"ml.c5d.2xlarge"|"ml.c5d.4xlarge"|"ml.c5d.9xlarge"|"ml.c5d.18xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.12xlarge"|"ml.r5.24xlarge"|"ml.r5d.large"|"ml.r5d.xlarge"|"ml.r5d.2xlarge"|"ml.r5d.4xlarge"|"ml.r5d.12xlarge"|"ml.r5d.24xlarge"|"ml.inf1.xlarge"|"ml.inf1.2xlarge"|"ml.inf1.6xlarge"|"ml.inf1.24xlarge"|"ml.c6i.large"|"ml.c6i.xlarge"|"ml.c6i.2xlarge"|"ml.c6i.4xlarge"|"ml.c6i.8xlarge"|"ml.c6i.12xlarge"|"ml.c6i.16xlarge"|"ml.c6i.24xlarge"|"ml.c6i.32xlarge"|"ml.g5.xlarge"|"ml.g5.2xlarge"|"ml.g5.4xlarge"|"ml.g5.8xlarge"|"ml.g5.12xlarge"|"ml.g5.16xlarge"|"ml.g5.24xlarge"|"ml.g5.48xlarge"|"ml.p4d.24xlarge"|"ml.c7g.large"|"ml.c7g.xlarge"|"ml.c7g.2xlarge"|"ml.c7g.4xlarge"|"ml.c7g.8xlarge"|"ml.c7g.12xlarge"|"ml.c7g.16xlarge"|"ml.m6g.large"|"ml.m6g.xlarge"|"ml.m6g.2xlarge"|"ml.m6g.4xlarge"|"ml.m6g.8xlarge"|"ml.m6g.12xlarge"|"ml.m6g.16xlarge"|"ml.m6gd.large"|"ml.m6gd.xlarge"|"ml.m6gd.2xlarge"|"ml.m6gd.4xlarge"|"ml.m6gd.8xlarge"|"ml.m6gd.12xlarge"|"ml.m6gd.16xlarge"|"ml.c6g.large"|"ml.c6g.xlarge"|"ml.c6g.2xlarge"|"ml.c6g.4xlarge"|"ml.c6g.8xlarge"|"ml.c6g.12xlarge"|"ml.c6g.16xlarge"|"ml.c6gd.large"|"ml.c6gd.xlarge"|"ml.c6gd.2xlarge"|"ml.c6gd.4xlarge"|"ml.c6gd.8xlarge"|"ml.c6gd.12xlarge"|"ml.c6gd.16xlarge"|"ml.c6gn.large"|"ml.c6gn.xlarge"|"ml.c6gn.2xlarge"|"ml.c6gn.4xlarge"|"ml.c6gn.8xlarge"|"ml.c6gn.12xlarge"|"ml.c6gn.16xlarge"|"ml.r6g.large"|"ml.r6g.xlarge"|"ml.r6g.2xlarge"|"ml.r6g.4xlarge"|"ml.r6g.8xlarge"|"ml.r6g.12xlarge"|"ml.r6g.16xlarge"|"ml.r6gd.large"|"ml.r6gd.xlarge"|"ml.r6gd.2xlarge"|"ml.r6gd.4xlarge"|"ml.r6gd.8xlarge"|"ml.r6gd.12xlarge"|"ml.r6gd.16xlarge"|"ml.p4de.24xlarge"|"ml.trn1.2xlarge"|"ml.trn1.32xlarge"|"ml.inf2.xlarge"|"ml.inf2.8xlarge"|"ml.inf2.24xlarge"|"ml.inf2.48xlarge",
                    Environment = list(
                      "string"
                    )
                  )
                )
              )
            ),
            Endpoints = list(
              list(
                EndpointName = "string",
                EndpointArn = "string",
                CreationTime = as.POSIXct(
                  "2015-01-01"
                ),
                LastModifiedTime = as.POSIXct(
                  "2015-01-01"
                ),
                EndpointStatus = "OutOfService"|"Creating"|"Updating"|"SystemUpdating"|"RollingBack"|"InService"|"Deleting"|"Failed"
              )
            ),
            LastBatchTransformJob = list(
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
              ),
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              )
            ),
            MonitoringSchedules = list(
              list(
                MonitoringScheduleArn = "string",
                MonitoringScheduleName = "string",
                MonitoringScheduleStatus = "Pending"|"Failed"|"Scheduled"|"Stopped",
                MonitoringType = "DataQuality"|"ModelQuality"|"ModelBias"|"ModelExplainability",
                FailureReason = "string",
                CreationTime = as.POSIXct(
                  "2015-01-01"
                ),
                LastModifiedTime = as.POSIXct(
                  "2015-01-01"
                ),
                MonitoringScheduleConfig = list(
                  ScheduleConfig = list(
                    ScheduleExpression = "string"
                  ),
                  MonitoringJobDefinition = list(
                    BaselineConfig = list(
                      BaseliningJobName = "string",
                      ConstraintsResource = list(
                        S3Uri = "string"
                      ),
                      StatisticsResource = list(
                        S3Uri = "string"
                      )
                    ),
                    MonitoringInputs = list(
                      list(
                        EndpointInput = list(
                          EndpointName = "string",
                          LocalPath = "string",
                          S3InputMode = "Pipe"|"File",
                          S3DataDistributionType = "FullyReplicated"|"ShardedByS3Key",
                          FeaturesAttribute = "string",
                          InferenceAttribute = "string",
                          ProbabilityAttribute = "string",
                          ProbabilityThresholdAttribute = 123.0,
                          StartTimeOffset = "string",
                          EndTimeOffset = "string"
                        ),
                        BatchTransformInput = list(
                          DataCapturedDestinationS3Uri = "string",
                          DatasetFormat = list(
                            Csv = list(
                              Header = TRUE|FALSE
                            ),
                            Json = list(
                              Line = TRUE|FALSE
                            ),
                            Parquet = list()
                          ),
                          LocalPath = "string",
                          S3InputMode = "Pipe"|"File",
                          S3DataDistributionType = "FullyReplicated"|"ShardedByS3Key",
                          FeaturesAttribute = "string",
                          InferenceAttribute = "string",
                          ProbabilityAttribute = "string",
                          ProbabilityThresholdAttribute = 123.0,
                          StartTimeOffset = "string",
                          EndTimeOffset = "string"
                        )
                      )
                    ),
                    MonitoringOutputConfig = list(
                      MonitoringOutputs = list(
                        list(
                          S3Output = list(
                            S3Uri = "string",
                            LocalPath = "string",
                            S3UploadMode = "Continuous"|"EndOfJob"
                          )
                        )
                      ),
                      KmsKeyId = "string"
                    ),
                    MonitoringResources = list(
                      ClusterConfig = list(
                        InstanceCount = 123,
                        InstanceType = "ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge",
                        VolumeSizeInGB = 123,
                        VolumeKmsKeyId = "string"
                      )
                    ),
                    MonitoringAppSpecification = list(
                      ImageUri = "string",
                      ContainerEntrypoint = list(
                        "string"
                      ),
                      ContainerArguments = list(
                        "string"
                      ),
                      RecordPreprocessorSourceUri = "string",
                      PostAnalyticsProcessorSourceUri = "string"
                    ),
                    StoppingCondition = list(
                      MaxRuntimeInSeconds = 123
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
                    RoleArn = "string"
                  ),
                  MonitoringJobDefinitionName = "string",
                  MonitoringType = "DataQuality"|"ModelQuality"|"ModelBias"|"ModelExplainability"
                ),
                EndpointName = "string",
                MonitoringAlertSummaries = list(
                  list(
                    MonitoringAlertName = "string",
                    CreationTime = as.POSIXct(
                      "2015-01-01"
                    ),
                    LastModifiedTime = as.POSIXct(
                      "2015-01-01"
                    ),
                    AlertStatus = "InAlert"|"OK",
                    DatapointsToAlert = 123,
                    EvaluationPeriod = 123,
                    Actions = list(
                      ModelDashboardIndicator = list(
                        Enabled = TRUE|FALSE
                      )
                    )
                  )
                ),
                LastMonitoringExecutionSummary = list(
                  MonitoringScheduleName = "string",
                  ScheduledTime = as.POSIXct(
                    "2015-01-01"
                  ),
                  CreationTime = as.POSIXct(
                    "2015-01-01"
                  ),
                  LastModifiedTime = as.POSIXct(
                    "2015-01-01"
                  ),
                  MonitoringExecutionStatus = "Pending"|"Completed"|"CompletedWithViolations"|"InProgress"|"Failed"|"Stopping"|"Stopped",
                  ProcessingJobArn = "string",
                  EndpointName = "string",
                  FailureReason = "string",
                  MonitoringJobDefinitionName = "string",
                  MonitoringType = "DataQuality"|"ModelQuality"|"ModelBias"|"ModelExplainability"
                )
              )
            ),
            ModelCard = list(
              ModelCardArn = "string",
              ModelCardName = "string",
              ModelCardVersion = 123,
              ModelCardStatus = "Draft"|"PendingReview"|"Approved"|"Archived",
              SecurityConfig = list(
                KmsKeyId = "string"
              ),
              CreationTime = as.POSIXct(
                "2015-01-01"
              ),
              CreatedBy = list(
                UserProfileArn = "string",
                UserProfileName = "string",
                DomainId = "string",
                IamIdentity = list(
                  Arn = "string",
                  PrincipalId = "string",
                  SourceIdentity = "string"
                )
              ),
              LastModifiedTime = as.POSIXct(
                "2015-01-01"
              ),
              LastModifiedBy = list(
                UserProfileArn = "string",
                UserProfileName = "string",
                DomainId = "string",
                IamIdentity = list(
                  Arn = "string",
                  PrincipalId = "string",
                  SourceIdentity = "string"
                )
              ),
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              ),
              ModelId = "string",
              RiskRating = "string"
            )
          ),
          ModelCard = list(
            ModelCardArn = "string",
            ModelCardName = "string",
            ModelCardVersion = 123,
            Content = "string",
            ModelCardStatus = "Draft"|"PendingReview"|"Approved"|"Archived",
            SecurityConfig = list(
              KmsKeyId = "string"
            ),
            CreationTime = as.POSIXct(
              "2015-01-01"
            ),
            CreatedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            LastModifiedTime = as.POSIXct(
              "2015-01-01"
            ),
            LastModifiedBy = list(
              UserProfileArn = "string",
              UserProfileName = "string",
              DomainId = "string",
              IamIdentity = list(
                Arn = "string",
                PrincipalId = "string",
                SourceIdentity = "string"
              )
            ),
            Tags = list(
              list(
                Key = "string",
                Value = "string"
              )
            ),
            ModelId = "string",
            RiskRating = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$search(
      Resource = "TrainingJob"|"Experiment"|"ExperimentTrial"|"ExperimentTrialComponent"|"Endpoint"|"ModelPackage"|"ModelPackageGroup"|"Pipeline"|"PipelineExecution"|"FeatureGroup"|"Project"|"FeatureMetadata"|"HyperParameterTuningJob"|"ModelCard"|"Model",
      SearchExpression = list(
        Filters = list(
          list(
            Name = "string",
            Operator = "Equals"|"NotEquals"|"GreaterThan"|"GreaterThanOrEqualTo"|"LessThan"|"LessThanOrEqualTo"|"Contains"|"Exists"|"NotExists"|"In",
            Value = "string"
          )
        ),
        NestedFilters = list(
          list(
            NestedPropertyName = "string",
            Filters = list(
              list(
                Name = "string",
                Operator = "Equals"|"NotEquals"|"GreaterThan"|"GreaterThanOrEqualTo"|"LessThan"|"LessThanOrEqualTo"|"Contains"|"Exists"|"NotExists"|"In",
                Value = "string"
              )
            )
          )
        ),
        SubExpressions = list(
          list()
        ),
        Operator = "And"|"Or"
      ),
      SortBy = "string",
      SortOrder = "Ascending"|"Descending",
      NextToken = "string",
      MaxResults = 123
    )
