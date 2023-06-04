<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_get_evaluation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an Evaluation that includes metadata as well as the current status of the Evaluation

### Description

Returns an `Evaluation` that includes metadata as well as the current
status of the `Evaluation`.

### Usage

    machinelearning_get_evaluation(EvaluationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_get_evaluation_:_EvaluationId">EvaluationId</code></td>
<td><p>[required] The ID of the <code>Evaluation</code> to retrieve. The
evaluation of each <code>MLModel</code> is recorded and cataloged. The
ID provides the means to access the information.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationId = "string",
      MLModelId = "string",
      EvaluationDataSourceId = "string",
      InputDataLocationS3 = "string",
      CreatedByIamUser = "string",
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      Name = "string",
      Status = "PENDING"|"INPROGRESS"|"FAILED"|"COMPLETED"|"DELETED",
      PerformanceMetrics = list(
        Properties = list(
          "string"
        )
      ),
      LogUri = "string",
      Message = "string",
      ComputeTime = 123,
      FinishedAt = as.POSIXct(
        "2015-01-01"
      ),
      StartedAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$get_evaluation(
      EvaluationId = "string"
    )
