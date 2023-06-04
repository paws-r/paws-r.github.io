<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_list_flywheel_iteration_history</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Information about the history of a flywheel iteration

### Description

Information about the history of a flywheel iteration. For more
information about flywheels, see [Flywheel
overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the *Amazon Comprehend Developer Guide*.

### Usage

    comprehend_list_flywheel_iteration_history(FlywheelArn, Filter,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_list_flywheel_iteration_history_:_FlywheelArn">FlywheelArn</code></td>
<td><p>[required] The ARN of the flywheel.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_list_flywheel_iteration_history_:_Filter">Filter</code></td>
<td><p>Filter the flywheel iteration history based on creation
time.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_list_flywheel_iteration_history_:_NextToken">NextToken</code></td>
<td><p>Next token</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_list_flywheel_iteration_history_:_MaxResults">MaxResults</code></td>
<td><p>Maximum number of iteration history results to return</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FlywheelIterationPropertiesList = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_flywheel_iteration_history(
      FlywheelArn = "string",
      Filter = list(
        CreationTimeAfter = as.POSIXct(
          "2015-01-01"
        ),
        CreationTimeBefore = as.POSIXct(
          "2015-01-01"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
