<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_create_auto_ml_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Autopilot job

### Description

Creates an Autopilot job.

Find the best-performing model after you run an Autopilot job by calling
`describe_auto_ml_job`.

For information about how to use Autopilot, see [Automate Model
Development with Amazon SageMaker
Autopilot](https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-automate-model-development.html).

### Usage

    sagemaker_create_auto_ml_job(AutoMLJobName, InputDataConfig,
      OutputDataConfig, ProblemType, AutoMLJobObjective, AutoMLJobConfig,
      RoleArn, GenerateCandidateDefinitionsOnly, Tags, ModelDeployConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_create_auto_ml_job_:_AutoMLJobName">AutoMLJobName</code></td>
<td><p>[required] Identifies an Autopilot job. The name must be unique
to your account and is case insensitive.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_auto_ml_job_:_InputDataConfig">InputDataConfig</code></td>
<td><p>[required] An array of channel objects that describes the input
data and its location. Each channel is a named input source. Similar to
<code>InputDataConfig</code> supported by <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_HyperParameterTrainingJobDefinition.html">HyperParameterTrainingJobDefinition</a>.
Format(s) supported: CSV, Parquet. A minimum of 500 rows is required for
the training dataset. There is not a minimum number of rows required for
the validation dataset.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_auto_ml_job_:_OutputDataConfig">OutputDataConfig</code></td>
<td><p>[required] Provides information about encryption and the Amazon
S3 output path needed to store artifacts from an AutoML job. Format(s)
supported: CSV.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_auto_ml_job_:_ProblemType">ProblemType</code></td>
<td><p>Defines the type of supervised learning problem available for the
candidates. For more information, see <a
href="https://docs.aws.amazon.com/sagemaker/latest/dg/autopilot-datasets-problem-types.html#autopilot-problem-types">Amazon
SageMaker Autopilot problem types</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_auto_ml_job_:_AutoMLJobObjective">AutoMLJobObjective</code></td>
<td><p>Defines the objective metric used to measure the predictive
quality of an AutoML job. You provide an <a
href="https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_AutoMLJobObjective.html">AutoMLJobObjective$MetricName</a>
and Autopilot infers whether to minimize or maximize it. For
<code>create_auto_ml_job_v2</code>, only <code>Accuracy</code> is
supported.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_auto_ml_job_:_AutoMLJobConfig">AutoMLJobConfig</code></td>
<td><p>A collection of settings used to configure an AutoML
job.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_create_auto_ml_job_:_RoleArn">RoleArn</code></td>
<td><p>[required] The ARN of the role that is used to access the
data.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_auto_ml_job_:_GenerateCandidateDefinitionsOnly">GenerateCandidateDefinitionsOnly</code></td>
<td><p>Generates possible candidates without training the models. A
candidate is a combination of data preprocessors, algorithms, and
algorithm parameter settings.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_create_auto_ml_job_:_Tags">Tags</code></td>
<td><p>An array of key-value pairs. You can use tags to categorize your
Amazon Web Services resources in different ways, for example, by
purpose, owner, or environment. For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web ServicesResources</a>. Tag keys must be unique per
resource.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_create_auto_ml_job_:_ModelDeployConfig">ModelDeployConfig</code></td>
<td><p>Specifies how to generate the endpoint name for an automatic
one-click Autopilot model deployment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoMLJobArn = "string"
    )

### Request syntax

    svc$create_auto_ml_job(
      AutoMLJobName = "string",
      InputDataConfig = list(
        list(
          DataSource = list(
            S3DataSource = list(
              S3DataType = "ManifestFile"|"S3Prefix"|"AugmentedManifestFile",
              S3Uri = "string"
            )
          ),
          CompressionType = "None"|"Gzip",
          TargetAttributeName = "string",
          ContentType = "string",
          ChannelType = "training"|"validation",
          SampleWeightAttributeName = "string"
        )
      ),
      OutputDataConfig = list(
        KmsKeyId = "string",
        S3OutputPath = "string"
      ),
      ProblemType = "BinaryClassification"|"MulticlassClassification"|"Regression",
      AutoMLJobObjective = list(
        MetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro"
      ),
      AutoMLJobConfig = list(
        CompletionCriteria = list(
          MaxCandidates = 123,
          MaxRuntimePerTrainingJobInSeconds = 123,
          MaxAutoMLJobRuntimeInSeconds = 123
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
        DataSplitConfig = list(
          ValidationFraction = 123.0
        ),
        CandidateGenerationConfig = list(
          FeatureSpecificationS3Uri = "string",
          AlgorithmsConfig = list(
            list(
              AutoMLAlgorithms = list(
                "xgboost"|"linear-learner"|"mlp"|"lightgbm"|"catboost"|"randomforest"|"extra-trees"|"nn-torch"|"fastai"
              )
            )
          )
        ),
        Mode = "AUTO"|"ENSEMBLING"|"HYPERPARAMETER_TUNING"
      ),
      RoleArn = "string",
      GenerateCandidateDefinitionsOnly = TRUE|FALSE,
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ModelDeployConfig = list(
        AutoGenerateEndpointName = TRUE|FALSE,
        EndpointName = "string"
      )
    )
