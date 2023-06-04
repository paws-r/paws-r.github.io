<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_describe_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides a JSON containing the overall information about a specific ML model, including model name and ARN, dataset, training and evaluation information, status, and so on

### Description

Provides a JSON containing the overall information about a specific ML
model, including model name and ARN, dataset, training and evaluation
information, status, and so on.

### Usage

    lookoutequipment_describe_model(ModelName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_describe_model_:_ModelName">ModelName</code></td>
<td><p>[required] The name of the ML model to be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ModelName = "string",
      ModelArn = "string",
      DatasetName = "string",
      DatasetArn = "string",
      Schema = "string",
      LabelsInputConfiguration = list(
        S3InputConfiguration = list(
          Bucket = "string",
          Prefix = "string"
        ),
        LabelGroupName = "string"
      ),
      TrainingDataStartTime = as.POSIXct(
        "2015-01-01"
      ),
      TrainingDataEndTime = as.POSIXct(
        "2015-01-01"
      ),
      EvaluationDataStartTime = as.POSIXct(
        "2015-01-01"
      ),
      EvaluationDataEndTime = as.POSIXct(
        "2015-01-01"
      ),
      RoleArn = "string",
      DataPreProcessingConfiguration = list(
        TargetSamplingRate = "PT1S"|"PT5S"|"PT10S"|"PT15S"|"PT30S"|"PT1M"|"PT5M"|"PT10M"|"PT15M"|"PT30M"|"PT1H"
      ),
      Status = "IN_PROGRESS"|"SUCCESS"|"FAILED",
      TrainingExecutionStartTime = as.POSIXct(
        "2015-01-01"
      ),
      TrainingExecutionEndTime = as.POSIXct(
        "2015-01-01"
      ),
      FailedReason = "string",
      ModelMetrics = "string",
      LastUpdatedTime = as.POSIXct(
        "2015-01-01"
      ),
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      ServerSideKmsKeyId = "string",
      OffCondition = "string"
    )

### Request syntax

    svc$describe_model(
      ModelName = "string"
    )
