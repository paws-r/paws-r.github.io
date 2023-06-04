<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_auto_ml_job_v2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about an Amazon SageMaker AutoML V2 job

### Description

Returns information about an Amazon SageMaker AutoML V2 job.

This API action is callable through SageMaker Canvas only. Calling it
directly from the CLI or an SDK results in an error.

### Usage

    sagemaker_describe_auto_ml_job_v2(AutoMLJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_auto_ml_job_v2_:_AutoMLJobName">AutoMLJobName</code></td>
<td><p>[required] Requests information about an AutoML V2 job using its
unique name.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AutoMLJobName = "string",
      AutoMLJobArn = "string",
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
      RoleArn = "string",
      AutoMLJobObjective = list(
        MetricName = "Accuracy"|"MSE"|"F1"|"F1macro"|"AUC"|"RMSE"|"MAE"|"R2"|"BalancedAccuracy"|"Precision"|"PrecisionMacro"|"Recall"|"RecallMacro"
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
      ModelDeployConfig = list(
        AutoGenerateEndpointName = TRUE|FALSE,
        EndpointName = "string"
      ),
      ModelDeployResult = list(
        EndpointName = "string"
      ),
      DataSplitConfig = list(
        ValidationFraction = 123.0
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
      )
    )

### Request syntax

    svc$describe_auto_ml_job_v2(
      AutoMLJobName = "string"
    )
