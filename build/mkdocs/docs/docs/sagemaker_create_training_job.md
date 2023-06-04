<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_training_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a model training job

### Description

Starts a model training job. After training completes, SageMaker saves
the resulting model artifacts to an Amazon S3 location that you specify.

If you choose to host your model using SageMaker hosting services, you
can use the resulting model artifacts as part of the model. You can also
use the artifacts in a machine learning service other than SageMaker,
provided that you know how to use them for inference.

In the request body, you provide the following:

-   `AlgorithmSpecification` - Identifies the training algorithm to use.

-   `HyperParameters` - Specify these algorithm-specific parameters to
    enable the estimation of model parameters during training.
    Hyperparameters can be tuned to optimize this learning process. For
    a list of hyperparameters for each training algorithm provided by
    SageMaker, see
    [Algorithms](https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html).

    Do not include any security-sensitive information including account
    access IDs, secrets or tokens in any hyperparameter field. If the
    use of security-sensitive credentials are detected, SageMaker will
    reject your training job request and return an exception error.

-   `InputDataConfig` - Describes the input required by the training job
    and the Amazon S3, EFS, or FSx location where it is stored.

-   `OutputDataConfig` - Identifies the Amazon S3 bucket where you want
    SageMaker to save the results of model training.

-   `ResourceConfig` - Identifies the resources, ML compute instances,
    and ML storage volumes to deploy for model training. In distributed
    training, you specify more than one instance.

-   `EnableManagedSpotTraining` - Optimize the cost of training machine
    learning models by up to 80% by using Amazon EC2 Spot instances. For
    more information, see [Managed Spot
    Training](https://docs.aws.amazon.com/sagemaker/latest/dg/model-managed-spot-training.html).

-   `RoleArn` - The Amazon Resource Name (ARN) that SageMaker assumes to
    perform tasks on your behalf during model training. You must grant
    this role the necessary permissions so that SageMaker can
    successfully complete model training.

-   `StoppingCondition` - To help cap training costs, use
    `MaxRuntimeInSeconds` to set a time limit for training. Use
    `MaxWaitTimeInSeconds` to specify how long a managed spot training
    job has to complete.

-   `Environment` - The environment variables to set in the Docker
    container.

-   `RetryStrategy` - The number of times to retry the job when the job
    fails due to an `InternalServerError`.

For more information about SageMaker, see [How It
Works](https://docs.aws.amazon.com/sagemaker/latest/dg/).

### Usage

    sagemaker_create_training_job(TrainingJobName, HyperParameters,
      AlgorithmSpecification, RoleArn, InputDataConfig, OutputDataConfig,
      ResourceConfig, VpcConfig, StoppingCondition, Tags,
      EnableNetworkIsolation, EnableInterContainerTrafficEncryption,
      EnableManagedSpotTraining, CheckpointConfig, DebugHookConfig,
      DebugRuleConfigurations, TensorBoardOutputConfig, ExperimentConfig,
      ProfilerConfig, ProfilerRuleConfigurations, Environment, RetryStrategy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_training_job_:_TrainingJobName">TrainingJobName</code></td>
<td><p>[required] The name of the training job. The name must be unique
within an Amazon Web Services Region in an Amazon Web Services
account.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_training_job_:_HyperParameters">HyperParameters</code></td>
<td><p>Algorithm-specific parameters that influence the quality of the
model. You set hyperparameters before you start the learning process.
For a list of hyperparameters for each training algorithm provided by
SageMaker, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html">Algorithms</a>.</p>
<p>You can specify a maximum of 100 hyperparameters. Each hyperparameter
is a key-value pair. Each key and value is limited to 256 characters, as
specified by the <code
style="white-space: pre;">⁠Length Constraint⁠</code>.</p>
<p>Do not include any security-sensitive information including account
access IDs, secrets or tokens in any hyperparameter field. If the use of
security-sensitive credentials are detected, SageMaker will reject your
training job request and return an exception error.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_training_job_:_AlgorithmSpecification">AlgorithmSpecification</code></td>
<td><p>[required] The registry path of the Docker image that contains
the training algorithm and algorithm-specific metadata, including the
input mode. For more information about algorithms provided by SageMaker,
see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/algos.html">Algorithms</a>.
For information about providing your own algorithms, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/docker-containers.html">Using
Your Own Algorithms with Amazon SageMaker</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_training_job_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role that
SageMaker can assume to perform tasks on your behalf.</p>
<p>During model training, SageMaker needs your permission to read input
data from an S3 bucket, download a Docker image that contains training
code, write model artifacts to an S3 bucket, write logs to Amazon
CloudWatch Logs, and publish metrics to Amazon CloudWatch. You grant
permissions for all of these tasks to an IAM role. For more information,
see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html">SageMaker
Roles</a>.</p>
<p>To be able to pass this role to SageMaker, the caller of this API
must have the <code>iam:PassRole</code> permission.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_training_job_:_InputDataConfig">InputDataConfig</code></td>
<td><p>An array of <code>Channel</code> objects. Each channel is a named
input source. <code>InputDataConfig</code> describes the input data and
its location.</p>
<p>Algorithms can accept input data from one or more channels. For
example, an algorithm might have two channels of input data,
<code>training_data</code> and <code>validation_data</code>. The
configuration for each channel provides the S3, EFS, or FSx location
where the input data is stored. It also provides information about the
stored data: the MIME type, compression method, and whether the data is
wrapped in RecordIO format.</p>
<p>Depending on the input mode that the algorithm supports, SageMaker
either copies input data files from an S3 bucket to a local directory in
the Docker container, or makes it available as input streams. For
example, if you specify an EFS location, input data files are available
as input streams. They do not need to be downloaded.</p>
<p>Your input must be in the same Amazon Web Services region as your
training job.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_training_job_:_OutputDataConfig">OutputDataConfig</code></td>
<td><p>[required] Specifies the path to the S3 location where you want
to store model artifacts. SageMaker creates subfolders for the
artifacts.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_training_job_:_ResourceConfig">ResourceConfig</code></td>
<td><p>[required] The resources, including the ML compute instances and
ML storage volumes, to use for model training.</p>
<p>ML storage volumes store model artifacts and incremental states.
Training algorithms might also use ML storage volumes for scratch space.
If you want SageMaker to use the ML storage volume to store the training
data, choose <code>File</code> as the <code>TrainingInputMode</code> in
the algorithm specification. For distributed training algorithms,
specify an instance count greater than 1.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_training_job_:_VpcConfig">VpcConfig</code></td>
<td><p>A <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VpcConfig.html">VpcConfig</a>
object that specifies the VPC that you want your training job to connect
to. Control access to and from your training container by configuring
the VPC. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/train-vpc.html">Protect
Training Jobs by Using an Amazon Virtual Private Cloud</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_training_job_:_StoppingCondition">StoppingCondition</code></td>
<td><p>[required] Specifies a limit to how long a model training job can
run. It also specifies how long a managed Spot training job has to
complete. When the job reaches the time limit, SageMaker ends the
training job. Use this API to cap model training costs.</p>
<p>To stop a job, SageMaker sends the algorithm the <code>SIGTERM</code>
signal, which delays job termination for 120 seconds. Algorithms can use
this 120-second window to save the model artifacts, so the results of
training are not lost.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_training_job_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs. You can use tags to categorize your
Amazon Web Services resources in different ways, for example, by
purpose, owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services Resources</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_training_job_:_EnableNetworkIsolation">EnableNetworkIsolation</code></td>
<td><p>Isolates the training container. No inbound or outbound network
calls can be made, except for calls between peers within a training
cluster for distributed training. If you enable network isolation for
training jobs that are configured to use a VPC, SageMaker downloads and
uploads customer data and model artifacts through the specified VPC, but
the training container does not have network access.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_training_job_:_EnableInterContainerTrafficEncryption">EnableInterContainerTrafficEncryption</code></td>
<td><p>To encrypt all communications between ML compute instances in
distributed training, choose <code>True</code>. Encryption provides
greater security for distributed training, but training might take
longer. How long it takes depends on the amount of communication between
compute instances, especially if you use a deep learning algorithm in
distributed training. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/train-encrypt.html">Protect
Communications Between ML Compute Instances in a Distributed Training
Job</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_training_job_:_EnableManagedSpotTraining">EnableManagedSpotTraining</code></td>
<td><p>To train models using managed spot training, choose
<code>True</code>. Managed spot training provides a fully managed and
scalable infrastructure for training machine learning models. this
option is useful when training jobs can be interrupted and when there is
flexibility when the training job is run.</p>
<p>The complete and intermediate results of jobs are stored in an Amazon
S3 bucket, and can be used as a starting point to train models
incrementally. Amazon SageMaker provides metrics and logs in CloudWatch.
They can be used to see when managed spot training jobs are running,
interrupted, resumed, or completed.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_training_job_:_CheckpointConfig">CheckpointConfig</code></td>
<td><p>Contains information about the output location for managed spot
training checkpoint data.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_training_job_:_DebugHookConfig">DebugHookConfig</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_training_job_:_DebugRuleConfigurations">DebugRuleConfigurations</code></td>
<td><p>Configuration information for Amazon SageMaker Debugger rules for
debugging output tensors.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_training_job_:_TensorBoardOutputConfig">TensorBoardOutputConfig</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_training_job_:_ExperimentConfig">ExperimentConfig</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_training_job_:_ProfilerConfig">ProfilerConfig</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_training_job_:_ProfilerRuleConfigurations">ProfilerRuleConfigurations</code></td>
<td><p>Configuration information for Amazon SageMaker Debugger rules for
profiling system and framework metrics.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_training_job_:_Environment">Environment</code></td>
<td><p>The environment variables to set in the Docker
container.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_training_job_:_RetryStrategy">RetryStrategy</code></td>
<td><p>The number of times to retry the job when the job fails due to an
<code>InternalServerError</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrainingJobArn = "string"
    )

### Request syntax

    svc$create_training_job(
      TrainingJobName = "string",
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      EnableNetworkIsolation = TRUE|FALSE,
      EnableInterContainerTrafficEncryption = TRUE|FALSE,
      EnableManagedSpotTraining = TRUE|FALSE,
      CheckpointConfig = list(
        S3Uri = "string",
        LocalPath = "string"
      ),
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
      ExperimentConfig = list(
        ExperimentName = "string",
        TrialName = "string",
        TrialComponentDisplayName = "string",
        RunName = "string"
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
      Environment = list(
        "string"
      ),
      RetryStrategy = list(
        MaximumRetryAttempts = 123
      )
    )
