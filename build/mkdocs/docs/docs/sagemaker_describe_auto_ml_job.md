<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_auto_ml_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about an Amazon SageMaker AutoML job

### Description

Returns information about an Amazon SageMaker AutoML job.

### Usage

    sagemaker_describe_auto_ml_job(AutoMLJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_auto_ml_job_:_AutoMLJobName">AutoMLJobName</code></td>
<td><p>[required] Requests information about an AutoML job using its
unique name.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoMLJobName = "string",
      AutoMLJobArn = "string",
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
      RoleArn = "string",
      AutoMLJobObjective = list(
        MetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro"
      ),
      ProblemType = "BinaryClassification"|"MulticlassClassification"|"Regression",
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
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      EndTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      FailureReason = "string",
      PartialFailureReasons = list(
        list(
          PartialFailureMessage = "string"
        )
      ),
      BestCandidate = list(
        CandidateName = "string",
        FinalAutoMLJobObjectiveMetric = list(
          Type = "Maximize"|"Minimize",
          MetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro",
          Value = 123.0,
          StandardMetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro"
        ),
        ObjectiveStatus = "Succeeded"|"Pending"|"Failed",
        CandidateSteps = list(
          list(
            CandidateStepType = "AWS::SageMaker::TrainingJob"|"AWS::SageMaker::TransformJob"|"AWS::SageMaker::ProcessingJob",
            CandidateStepArn = "string",
            CandidateStepName = "string"
          )
        ),
        CandidateStatus = "Completed"|"InProgress"|"Failed"|"Stopped"|"Stopping",
        InferenceContainers = list(
          list(
            Image = "string",
            ModelDataUrl = "string",
            Environment = list(
              "string"
            )
          )
        ),
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        LastModifiedTime = as.POSIXct(
          "2015-01-01"
        ),
        FailureReason = "string",
        CandidateProperties = list(
          CandidateArtifactLocations = list(
            Explainability = "string",
            ModelInsights = "string"
          ),
          CandidateMetrics = list(
            list(
              MetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro",
              Value = 123.0,
              Set = "Train"|"Validation"|"Test",
              StandardMetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro"|"LogLoss"|"InferenceLatency"
            )
          )
        ),
        InferenceContainerDefinitions = list(
          list(
            list(
              Image = "string",
              ModelDataUrl = "string",
              Environment = list(
                "string"
              )
            )
          )
        )
      ),
      AutoMLJobStatus = "Completed"|"InProgress"|"Failed"|"Stopped"|"Stopping",
      AutoMLJobSecondaryStatus = "Starting"|"AnalyzingData"|"FeatureEngineering"|"ModelTuning"|"MaxCandidatesReached"|"Failed"|"Stopped"|"MaxAutoMLJobRuntimeReached"|"Stopping"|"CandidateDefinitionsGenerated"|"GeneratingExplainabilityReport"|"Completed"|"ExplainabilityError"|"DeployingModel"|"ModelDeploymentError"|"GeneratingModelInsightsReport"|"ModelInsightsError"|"TrainingModels",
      GenerateCandidateDefinitionsOnly = TRUE|FALSE,
      AutoMLJobArtifacts = list(
        CandidateDefinitionNotebookLocation = "string",
        DataExplorationNotebookLocation = "string"
      ),
      ResolvedAttributes = list(
        AutoMLJobObjective = list(
          MetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro"
        ),
        ProblemType = "BinaryClassification"|"MulticlassClassification"|"Regression",
        CompletionCriteria = list(
          MaxCandidates = 123,
          MaxRuntimePerTrainingJobInSeconds = 123,
          MaxAutoMLJobRuntimeInSeconds = 123
        )
      ),
      ModelDeployConfig = list(
        AutoGenerateEndpointName = TRUE|FALSE,
        EndpointName = "string"
      ),
      ModelDeployResult = list(
        EndpointName = "string"
      )
    )

### Request syntax

    svc$describe_auto_ml_job(
      AutoMLJobName = "string"
    )
