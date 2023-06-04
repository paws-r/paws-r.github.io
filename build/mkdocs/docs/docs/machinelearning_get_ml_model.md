<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_get_ml_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an MLModel that includes detailed metadata, data source information, and the current status of the MLModel

### Description

Returns an `MLModel` that includes detailed metadata, data source
information, and the current status of the `MLModel`.

`get_ml_model` provides results in normal or verbose format.

### Usage

    machinelearning_get_ml_model(MLModelId, Verbose)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_get_ml_model_:_MLModelId">MLModelId</code></td>
<td><p>[required] The ID assigned to the <code>MLModel</code> at
creation.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_get_ml_model_:_Verbose">Verbose</code></td>
<td><p>Specifies whether the <code>get_ml_model</code> operation should
return <code>Recipe</code>.</p>
<p>If true, <code>Recipe</code> is returned.</p>
<p>If false, <code>Recipe</code> is not returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MLModelId = "string",
      TrainingDataSourceId = "string",
      CreatedByIamUser = "string",
      CreatedAt = as.POSIXct(
        "2015-01-01"
      ),
      LastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      Name = "string",
      Status = "PENDING"|"INPROGRESS"|"FAILED"|"COMPLETED"|"DELETED",
      SizeInBytes = 123,
      EndpointInfo = list(
        PeakRequestsPerSecond = 123,
        CreatedAt = as.POSIXct(
          "2015-01-01"
        ),
        EndpointUrl = "string",
        EndpointStatus = "NONE"|"READY"|"UPDATING"|"FAILED"
      ),
      TrainingParameters = list(
        "string"
      ),
      InputDataLocationS3 = "string",
      MLModelType = "REGRESSION"|"BINARY"|"MULTICLASS",
      ScoreThreshold = 123.0,
      ScoreThresholdLastUpdatedAt = as.POSIXct(
        "2015-01-01"
      ),
      LogUri = "string",
      Message = "string",
      ComputeTime = 123,
      FinishedAt = as.POSIXct(
        "2015-01-01"
      ),
      StartedAt = as.POSIXct(
        "2015-01-01"
      ),
      Recipe = "string",
      Schema = "string"
    )

### Request syntax

    svc$get_ml_model(
      MLModelId = "string",
      Verbose = TRUE|FALSE
    )
