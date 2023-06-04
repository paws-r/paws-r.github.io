<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_hyper_parameter_tuning_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a hyperparameter tuning job

### Description

Starts a hyperparameter tuning job. A hyperparameter tuning job finds
the best version of a model by running many training jobs on your
dataset using the algorithm you choose and values for hyperparameters
within ranges that you specify. It then chooses the hyperparameter
values that result in a model that performs the best, as measured by an
objective metric that you choose.

A hyperparameter tuning job automatically creates Amazon SageMaker
experiments, trials, and trial components for each training job that it
runs. You can view these entities in Amazon SageMaker Studio. For more
information, see [View Experiments, Trials, and Trial
Components](https://docs.aws.amazon.com/sagemaker/latest/dg/experiments-view-compare.html#experiments-view).

Do not include any security-sensitive information including account
access IDs, secrets or tokens in any hyperparameter field. If the use of
security-sensitive credentials are detected, SageMaker will reject your
training job request and return an exception error.

### Usage

    sagemaker_create_hyper_parameter_tuning_job(HyperParameterTuningJobName,
      HyperParameterTuningJobConfig, TrainingJobDefinition,
      TrainingJobDefinitions, WarmStartConfig, Tags, Autotune)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_hyper_parameter_tuning_job_:_HyperParameterTuningJobName">HyperParameterTuningJobName</code></td>
<td><p>[required] The name of the tuning job. This name is the prefix
for the names of all training jobs that this tuning job launches. The
name must be unique within the same Amazon Web Services account and
Amazon Web Services Region. The name must have 1 to 32 characters. Valid
characters are a-z, A-Z, 0-9, and : + = @ _ % - (hyphen). The name is
not case sensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_hyper_parameter_tuning_job_:_HyperParameterTuningJobConfig">HyperParameterTuningJobConfig</code></td>
<td><p>[required] The <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobConfig.html">HyperParameterTuningJobConfig</a>
object that describes the tuning job, including the search strategy, the
objective metric used to evaluate training jobs, ranges of parameters to
search, and resource limits for the tuning job. For more information,
see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/automatic-model-tuning-how-it-works.html">How
Hyperparameter Tuning Works</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_hyper_parameter_tuning_job_:_TrainingJobDefinition">TrainingJobDefinition</code></td>
<td><p>The <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTrainingJobDefinition.html">HyperParameterTrainingJobDefinition</a>
object that describes the training jobs that this tuning job launches,
including static hyperparameters, input data configuration, output data
configuration, resource configuration, and stopping condition.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_hyper_parameter_tuning_job_:_TrainingJobDefinitions">TrainingJobDefinitions</code></td>
<td><p>A list of the <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTrainingJobDefinition.html">HyperParameterTrainingJobDefinition</a>
objects launched for this tuning job.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_hyper_parameter_tuning_job_:_WarmStartConfig">WarmStartConfig</code></td>
<td><p>Specifies the configuration for starting the hyperparameter
tuning job using one or more previous tuning jobs as a starting point.
The results of previous tuning jobs are used to inform which
combinations of hyperparameters to search over in the new tuning
job.</p>
<p>All training jobs launched by the new hyperparameter tuning job are
evaluated by using the objective metric. If you specify
<code>IDENTICAL_DATA_AND_ALGORITHM</code> as the
<code>WarmStartType</code> value for the warm start configuration, the
training job that performs the best in the new tuning job is compared to
the best training jobs from the parent tuning jobs. From these, the
training job that performs the best as measured by the objective metric
is returned as the overall best training job.</p>
<p>All training jobs launched by parent hyperparameter tuning jobs and
the new hyperparameter tuning jobs count against the limit of training
jobs for the tuning job.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_hyper_parameter_tuning_job_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs. You can use tags to categorize your
Amazon Web Services resources in different ways, for example, by
purpose, owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a>.</p>
<p>Tags that you specify for the tuning job are also added to all
training jobs that the tuning job launches.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_hyper_parameter_tuning_job_:_Autotune">Autotune</code></td>
<td><p>Configures SageMaker Automatic model tuning (AMT) to
automatically find optimal parameters for the following fields:</p>
<ul>
<li><p><a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobConfig.html#sagemaker-Type-HyperParameterTuningJobConfig-ParameterRanges">ParameterRanges</a>:
The names and ranges of parameters that a hyperparameter tuning job can
optimize.</p></li>
<li><p><a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ResourceLimits.html">ResourceLimits</a>:
The maximum resources that can be used for a training job. These
resources include the maximum number of training jobs, the maximum
runtime of a tuning job, and the maximum number of training jobs to run
at the same time.</p></li>
<li><p><a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobConfig.html#sagemaker-Type-HyperParameterTuningJobConfig-TrainingJobEarlyStoppingType">TrainingJobEarlyStoppingType</a>:
A flag that specifies whether or not to use early stopping for training
jobs launched by a hyperparameter tuning job.</p></li>
<li><p><a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTrainingJobDefinition.html#sagemaker-Type-HyperParameterTrainingJobDefinition-RetryStrategy">RetryStrategy</a>:
The number of times to retry a training job.</p></li>
<li><p><a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTuningJobConfig.html">Strategy</a>:
Specifies how hyperparameter tuning chooses the combinations of
hyperparameter values to use for the training jobs that it
launches.</p></li>
<li><p><a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ConvergenceDetected.html">ConvergenceDetected</a>:
A flag to indicate that Automatic model tuning (AMT) has detected model
convergence.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HyperParameterTuningJobArn = "string"
    )

### Request syntax

    svc$create_hyper_parameter_tuning_job(
      HyperParameterTuningJobName = "string",
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
      WarmStartConfig = list(
        ParentHyperParameterTuningJobs = list(
          list(
            HyperParameterTuningJobName = "string"
          )
        ),
        WarmStartType = "IdenticalDataAndAlgorithm"|"TransferLearning"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      Autotune = list(
        Mode = "Enabled"
      )
    )
