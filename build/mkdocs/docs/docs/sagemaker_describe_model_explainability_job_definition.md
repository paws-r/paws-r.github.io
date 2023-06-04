<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_model_explainability_job_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a description of a model explainability job definition

### Description

Returns a description of a model explainability job definition.

### Usage

    sagemaker_describe_model_explainability_job_definition(
      JobDefinitionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_model_explainability_job_definition_:_JobDefinitionName">JobDefinitionName</code></td>
<td><p>[required] The name of the model explainability job definition.
The name must be unique within an Amazon Web Services Region in the
Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobDefinitionArn = "string",
      JobDefinitionName = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      ModelExplainabilityBaselineConfig = list(
        BaseliningJobName = "string",
        ConstraintsResource = list(
          S3Uri = "string"
        )
      ),
      ModelExplainabilityAppSpecification = list(
        ImageUri = "string",
        ConfigUri = "string",
        Environment = list(
          "string"
        )
      ),
      ModelExplainabilityJobInput = list(
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
      ),
      ModelExplainabilityJobOutputConfig = list(
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
      )
    )

### Request syntax

    svc$describe_model_explainability_job_definition(
      JobDefinitionName = "string"
    )
