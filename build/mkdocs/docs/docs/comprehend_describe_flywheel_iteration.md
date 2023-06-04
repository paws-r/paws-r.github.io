<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_describe_flywheel_iteration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieve the configuration properties of a flywheel iteration

### Description

Retrieve the configuration properties of a flywheel iteration. For more
information about flywheels, see [Flywheel
overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the *Amazon Comprehend Developer Guide*.

### Usage

    comprehend_describe_flywheel_iteration(FlywheelArn, FlywheelIterationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_describe_flywheel_iteration_:_FlywheelArn">FlywheelArn</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_describe_flywheel_iteration_:_FlywheelIterationId">FlywheelIterationId</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FlywheelIterationProperties = list(
        FlywheelArn = "string",
        FlywheelIterationId = "string",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        EndTime = as.POSIXct(
          "2015-01-01"
        ),
        Status = "TRAINING"|"EVALUATING"|"COMPLETED"|"FAILED"|"STOP_REQUESTED"|"STOPPED",
        Message = "string",
        EvaluatedModelArn = "string",
        EvaluatedModelMetrics = list(
          AverageF1Score = 123.0,
          AveragePrecision = 123.0,
          AverageRecall = 123.0,
          AverageAccuracy = 123.0
        ),
        TrainedModelArn = "string",
        TrainedModelMetrics = list(
          AverageF1Score = 123.0,
          AveragePrecision = 123.0,
          AverageRecall = 123.0,
          AverageAccuracy = 123.0
        ),
        EvaluationManifestS3Prefix = "string"
      )
    )

### Request syntax

    svc$describe_flywheel_iteration(
      FlywheelArn = "string",
      FlywheelIterationId = "string"
    )
