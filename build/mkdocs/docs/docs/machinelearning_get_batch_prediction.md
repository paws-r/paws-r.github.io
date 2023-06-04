<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_get_batch_prediction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a BatchPrediction that includes detailed metadata, status, and data file information for a Batch Prediction request

### Description

Returns a `BatchPrediction` that includes detailed metadata, status, and
data file information for a `⁠Batch Prediction⁠` request.

### Usage

    machinelearning_get_batch_prediction(BatchPredictionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_get_batch_prediction_:_BatchPredictionId">BatchPredictionId</code></td>
<td><p>[required] An ID assigned to the <code>BatchPrediction</code> at
creation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BatchPredictionId = "string",
      MLModelId = "string",
      BatchPredictionDataSourceId = "string",
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
      OutputUri = "string",
      LogUri = "string",
      Message = "string",
      ComputeTime = 123,
      FinishedAt = as.POSIXct(
        "2015-01-01"
      ),
      StartedAt = as.POSIXct(
        "2015-01-01"
      ),
      TotalRecordCount = 123,
      InvalidRecordCount = 123
    )

### Request syntax

    svc$get_batch_prediction(
      BatchPredictionId = "string"
    )
