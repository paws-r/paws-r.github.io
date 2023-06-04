<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_auto_ml_job_v2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon SageMaker AutoML job that uses non-tabular data such as images or text for Computer Vision or Natural Language Processing problems

### Description

Creates an Amazon SageMaker AutoML job that uses non-tabular data such
as images or text for Computer Vision or Natural Language Processing
problems.

Find the resulting model after you run an AutoML job V2 by calling
`describe_auto_ml_job_v2`.

To create an `AutoMLJob` using tabular data, see `create_auto_ml_job`.

This API action is callable through SageMaker Canvas only. Calling it
directly from the CLI or an SDK results in an error.

### Usage

    sagemaker_create_auto_ml_job_v2(AutoMLJobName, AutoMLJobInputDataConfig,
      OutputDataConfig, AutoMLProblemTypeConfig, RoleArn, Tags,
      SecurityConfig, AutoMLJobObjective, ModelDeployConfig, DataSplitConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_auto_ml_job_v2_:_AutoMLJobName">AutoMLJobName</code></td>
<td><p>[required] Identifies an Autopilot job. The name must be unique
to your account and is case insensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_auto_ml_job_v2_:_AutoMLJobInputDataConfig">AutoMLJobInputDataConfig</code></td>
<td><p>[required] An array of channel objects describing the input data
and their location. Each channel is a named input source. Similar to <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateAutoMLJob.html#sagemaker-CreateAutoMLJob-request-InputDataConfig">InputDataConfig</a>
supported by <code>create_auto_ml_job</code>. The supported formats
depend on the problem type:</p>
<ul>
<li><p>ImageClassification: S3Prefix, <code>ManifestFile</code>,
<code>AugmentedManifestFile</code></p></li>
<li><p>TextClassification: S3Prefix</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_auto_ml_job_v2_:_OutputDataConfig">OutputDataConfig</code></td>
<td><p>[required] Provides information about encryption and the Amazon
S3 output path needed to store artifacts from an AutoML job.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_auto_ml_job_v2_:_AutoMLProblemTypeConfig">AutoMLProblemTypeConfig</code></td>
<td><p>[required] Defines the configuration settings of one of the
supported problem types.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_auto_ml_job_v2_:_RoleArn">RoleArn</code></td>
<td><p>[required] The ARN of the role that is used to access the
data.</p></td>
</tr>
<tr class="even">
<td><code id="sagemaker_create_auto_ml_job_v2_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs. You can use tags to categorize your
Amazon Web Services resources in different ways, such as by purpose,
owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web ServicesResources</a>. Tag keys must be unique per
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_auto_ml_job_v2_:_SecurityConfig">SecurityConfig</code></td>
<td><p>The security configuration for traffic encryption or Amazon VPC
settings.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_auto_ml_job_v2_:_AutoMLJobObjective">AutoMLJobObjective</code></td>
<td><p>Specifies a metric to minimize or maximize as the objective of a
job. For <code>create_auto_ml_job_v2</code>, only <code>Accuracy</code>
is supported.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_auto_ml_job_v2_:_ModelDeployConfig">ModelDeployConfig</code></td>
<td><p>Specifies how to generate the endpoint name for an automatic
one-click Autopilot model deployment.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_auto_ml_job_v2_:_DataSplitConfig">DataSplitConfig</code></td>
<td><p>This structure specifies how to split the data into train and
validation datasets.</p>
<p>If you are using the V1 API (for example
<code>create_auto_ml_job</code>) or the V2 API for Natural Language
Processing problems (for example <code>create_auto_ml_job_v2</code> with
a <code>TextClassificationJobConfig</code> problem type), the validation
and training datasets must contain the same headers. Also, for V1 API
jobs, the validation dataset must be less than 2 GB in size.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoMLJobArn = "string"
    )

### Request syntax

    svc$create_auto_ml_job_v2(
      AutoMLJobName = "string",
      AutoMLJobInputDataConfig = list(
        list(
          ChannelType = "training"|"validation",
          ContentType = "string",
          CompressionType = "None"|"Gzip",
          DataSource = list(
            S3DataSource = list(
              S3DataType = "ManifestFile"|"S3Prefix"|"AugmentedManifestFile",
              S3Uri = "string"
            )
          )
        )
      ),
      OutputDataConfig = list(
        KmsKeyId = "string",
        S3OutputPath = "string"
      ),
      AutoMLProblemTypeConfig = list(
        ImageClassificationJobConfig = list(
          CompletionCriteria = list(
            MaxCandidates = 123,
            MaxRuntimePerTrainingJobInSeconds = 123,
            MaxAutoMLJobRuntimeInSeconds = 123
          )
        ),
        TextClassificationJobConfig = list(
          CompletionCriteria = list(
            MaxCandidates = 123,
            MaxRuntimePerTrainingJobInSeconds = 123,
            MaxAutoMLJobRuntimeInSeconds = 123
          ),
          ContentColumn = "string",
          TargetLabelColumn = "string"
        )
      ),
      RoleArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      SecurityConfig = list(
        VolumeKmsKeyId = "string",
        EnableInterContainerTrafficEncryption = TRUE|FALSE,
        VpcConfig = list(
          SecurityGroupIds = list(
            "string"
          ),
          Subnets = list(
            "string"
          )
        )
      ),
      AutoMLJobObjective = list(
        MetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro"
      ),
      ModelDeployConfig = list(
        AutoGenerateEndpointName = TRUE|FALSE,
        EndpointName = "string"
      ),
      DataSplitConfig = list(
        ValidationFraction = 123.0
      )
    )
