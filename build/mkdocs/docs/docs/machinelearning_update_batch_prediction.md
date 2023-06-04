<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_update_batch_prediction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the BatchPredictionName of a BatchPrediction

### Description

Updates the `BatchPredictionName` of a `BatchPrediction`.

You can use the `get_batch_prediction` operation to view the contents of
the updated data element.

### Usage

    machinelearning_update_batch_prediction(BatchPredictionId,
      BatchPredictionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_update_batch_prediction_:_BatchPredictionId">BatchPredictionId</code></td>
<td><p>[required] The ID assigned to the <code>BatchPrediction</code>
during creation.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_update_batch_prediction_:_BatchPredictionName">BatchPredictionName</code></td>
<td><p>[required] A new user-supplied name or description of the
<code>BatchPrediction</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BatchPredictionId = "string"
    )

### Request syntax

    svc$update_batch_prediction(
      BatchPredictionId = "string",
      BatchPredictionName = "string"
    )
