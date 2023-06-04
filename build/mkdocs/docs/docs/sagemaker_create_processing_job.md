<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_processing_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a processing job

### Description

Creates a processing job.

### Usage

    sagemaker_create_processing_job(ProcessingInputs,
      ProcessingOutputConfig, ProcessingJobName, ProcessingResources,
      StoppingCondition, AppSpecification, Environment, NetworkConfig,
      RoleArn, Tags, ExperimentConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_processing_job_:_ProcessingInputs">ProcessingInputs</code></td>
<td><p>An array of inputs configuring the data to download into the
processing container.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_processing_job_:_ProcessingOutputConfig">ProcessingOutputConfig</code></td>
<td><p>Output configuration for the processing job.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_processing_job_:_ProcessingJobName">ProcessingJobName</code></td>
<td><p>[required] The name of the processing job. The name must be
unique within an Amazon Web Services Region in the Amazon Web Services
account.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_processing_job_:_ProcessingResources">ProcessingResources</code></td>
<td><p>[required] Identifies the resources, ML compute instances, and ML
storage volumes to deploy for a processing job. In distributed training,
you specify more than one instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_processing_job_:_StoppingCondition">StoppingCondition</code></td>
<td><p>The time limit for how long the processing job is allowed to
run.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_processing_job_:_AppSpecification">AppSpecification</code></td>
<td><p>[required] Configures the processing job to run a specified
Docker container image.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_processing_job_:_Environment">Environment</code></td>
<td><p>The environment variables to set in the Docker container. Up to
100 key and values entries in the map are supported.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_processing_job_:_NetworkConfig">NetworkConfig</code></td>
<td><p>Networking options for a processing job, such as whether to allow
inbound and outbound network calls to and from processing containers,
and the VPC subnets and security groups to use for VPC-enabled
processing jobs.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_processing_job_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role that
Amazon SageMaker can assume to perform tasks on your behalf.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_processing_job_:_Tags">Tags</code></td>
<td><p>(Optional) An array of key-value pairs. For more information, see
<a
href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL">Using
Cost Allocation Tags</a> in the <em>Amazon Web Services Billing and Cost
Management User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_processing_job_:_ExperimentConfig">ExperimentConfig</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ProcessingJobArn = "string"
    )

### Request syntax

    svc$create_processing_job(
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
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ExperimentConfig = list(
        ExperimentName = "string",
        TrialName = "string",
        TrialComponentDisplayName = "string",
        RunName = "string"
      )
    )
