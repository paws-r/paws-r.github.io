<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_model_quality_job_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a definition for a job that monitors model quality and drift

### Description

Creates a definition for a job that monitors model quality and drift.
For information about model monitor, see [Amazon SageMaker Model
Monitor](https://docs.aws.amazon.com/sagemaker/latest/dg/model-monitor.html).

### Usage

    sagemaker_create_model_quality_job_definition(JobDefinitionName,
      ModelQualityBaselineConfig, ModelQualityAppSpecification,
      ModelQualityJobInput, ModelQualityJobOutputConfig, JobResources,
      NetworkConfig, RoleArn, StoppingCondition, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_model_quality_job_definition_:_JobDefinitionName">JobDefinitionName</code></td>
<td><p>[required] The name of the monitoring job definition.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_quality_job_definition_:_ModelQualityBaselineConfig">ModelQualityBaselineConfig</code></td>
<td><p>Specifies the constraints and baselines for the monitoring
job.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_quality_job_definition_:_ModelQualityAppSpecification">ModelQualityAppSpecification</code></td>
<td><p>[required] The container that runs the monitoring job.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_quality_job_definition_:_ModelQualityJobInput">ModelQualityJobInput</code></td>
<td><p>[required] A list of the inputs that are monitored. Currently
endpoints are supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_quality_job_definition_:_ModelQualityJobOutputConfig">ModelQualityJobOutputConfig</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_quality_job_definition_:_JobResources">JobResources</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_quality_job_definition_:_NetworkConfig">NetworkConfig</code></td>
<td><p>Specifies the network configuration for the monitoring
job.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_quality_job_definition_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of an IAM role that
Amazon SageMaker can assume to perform tasks on your behalf.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_model_quality_job_definition_:_StoppingCondition">StoppingCondition</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_model_quality_job_definition_:_Tags">Tags</code></td>
<td><p>(Optional) An array of key-value pairs. For more information, see
<a
href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html#allocation-whatURL">Using
Cost Allocation Tags</a> in the <em>Amazon Web Services Billing and Cost
Management User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobDefinitionArn = "string"
    )

### Request syntax

    svc$create_model_quality_job_definition(
      JobDefinitionName = "string",
      ModelQualityBaselineConfig = list(
        BaseliningJobName = "string",
        ConstraintsResource = list(
          S3Uri = "string"
        )
      ),
      ModelQualityAppSpecification = list(
        ImageUri = "string",
        ContainerEntrypoint = list(
          "string"
        ),
        ContainerArguments = list(
          "string"
        ),
        RecordPreprocessorSourceUri = "string",
        PostAnalyticsProcessorSourceUri = "string",
        ProblemType = "BinaryClassification"|"MulticlassClassification"|"Regression",
        Environment = list(
          "string"
        )
      ),
      ModelQualityJobInput = list(
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
        ),
        GroundTruthS3Input = list(
          S3Uri = "string"
        )
      ),
      ModelQualityJobOutputConfig = list(
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
      JobResources = list(
        ClusterConfig = list(
          InstanceCount = 123,
          InstanceType = "ml.t3.medium"|"ml.t3.large"|"ml.t3.xlarge"|"ml.t3.2xlarge"|"ml.m4.xlarge"|"ml.m4.2xlarge"|"ml.m4.4xlarge"|"ml.m4.10xlarge"|"ml.m4.16xlarge"|"ml.c4.xlarge"|"ml.c4.2xlarge"|"ml.c4.4xlarge"|"ml.c4.8xlarge"|"ml.p2.xlarge"|"ml.p2.8xlarge"|"ml.p2.16xlarge"|"ml.p3.2xlarge"|"ml.p3.8xlarge"|"ml.p3.16xlarge"|"ml.c5.xlarge"|"ml.c5.2xlarge"|"ml.c5.4xlarge"|"ml.c5.9xlarge"|"ml.c5.18xlarge"|"ml.m5.large"|"ml.m5.xlarge"|"ml.m5.2xlarge"|"ml.m5.4xlarge"|"ml.m5.12xlarge"|"ml.m5.24xlarge"|"ml.r5.large"|"ml.r5.xlarge"|"ml.r5.2xlarge"|"ml.r5.4xlarge"|"ml.r5.8xlarge"|"ml.r5.12xlarge"|"ml.r5.16xlarge"|"ml.r5.24xlarge"|"ml.g4dn.xlarge"|"ml.g4dn.2xlarge"|"ml.g4dn.4xlarge"|"ml.g4dn.8xlarge"|"ml.g4dn.12xlarge"|"ml.g4dn.16xlarge",
          VolumeSizeInGB = 123,
          VolumeKmsKeyId = "string"
        )
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
      StoppingCondition = list(
        MaxRuntimeInSeconds = 123
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
