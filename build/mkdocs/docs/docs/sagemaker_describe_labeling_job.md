<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_describe_labeling_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a labeling job

### Description

Gets information about a labeling job.

### Usage

    sagemaker_describe_labeling_job(LabelingJobName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_describe_labeling_job_:_LabelingJobName">LabelingJobName</code></td>
<td><p>[required] The name of the labeling job to return information
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LabelingJobStatus = "Initializing"|"InProgress"|"Completed"|"Failed"|"Stopping"|"Stopped",
      LabelCounters = list(
        TotalLabeled = 123,
        HumanLabeled = 123,
        MachineLabeled = 123,
        FailedNonRetryableError = 123,
        Unlabeled = 123
      ),
      FailureReason = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      JobReferenceCode = "string",
      LabelingJobName = "string",
      LabelingJobArn = "string",
      LabelAttributeName = "string",
      InputConfig = list(
        DataSource = list(
          S3DataSource = list(
            ManifestS3Uri = "string"
          ),
          SnsDataSource = list(
            SnsTopicArn = "string"
          )
        ),
        DataAttributes = list(
          ContentClassifiers = list(
            "FreeOfPersonallyIdentifiableInformation"|"FreeOfAdultContent"
          )
        )
      ),
      OutputConfig = list(
        S3OutputPath = "string",
        KmsKeyId = "string",
        SnsTopicArn = "string"
      ),
      RoleArn = "string",
      LabelCategoryConfigS3Uri = "string",
      StoppingConditions = list(
        MaxHumanLabeledObjectCount = 123,
        MaxPercentageOfInputDatasetLabeled = 123
      ),
      LabelingJobAlgorithmsConfig = list(
        LabelingJobAlgorithmSpecificationArn = "string",
        InitialActiveLearningModelArn = "string",
        LabelingJobResourceConfig = list(
          VolumeKmsKeyId = "string",
          VpcConfig = list(
            SecurityGroupIds = list(
              "string"
            ),
            Subnets = list(
              "string"
            )
          )
        )
      ),
      HumanTaskConfig = list(
        WorkteamArn = "string",
        UiConfig = list(
          UiTemplateS3Uri = "string",
          HumanTaskUiArn = "string"
        ),
        PreHumanTaskLambdaArn = "string",
        TaskKeywords = list(
          "string"
        ),
        TaskTitle = "string",
        TaskDescription = "string",
        NumberOfHumanWorkersPerDataObject = 123,
        TaskTimeLimitInSeconds = 123,
        TaskAvailabilityLifetimeInSeconds = 123,
        MaxConcurrentTaskCount = 123,
        AnnotationConsolidationConfig = list(
          AnnotationConsolidationLambdaArn = "string"
        ),
        PublicWorkforceTaskPrice = list(
          AmountInUsd = list(
            Dollars = 123,
            Cents = 123,
            TenthFractionsOfACent = 123
          )
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      LabelingJobOutput = list(
        OutputDatasetS3Uri = "string",
        FinalActiveLearningModelArn = "string"
      )
    )

### Request syntax

    svc$describe_labeling_job(
      LabelingJobName = "string"
    )
