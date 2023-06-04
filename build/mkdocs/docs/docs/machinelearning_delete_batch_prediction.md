<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_delete_batch_prediction</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns the DELETED status to a BatchPrediction, rendering it unusable

### Description

Assigns the DELETED status to a `BatchPrediction`, rendering it
unusable.

After using the `delete_batch_prediction` operation, you can use the
`get_batch_prediction` operation to verify that the status of the
`BatchPrediction` changed to DELETED.

**Caution:** The result of the `delete_batch_prediction` operation is
irreversible.

### Usage

    machinelearning_delete_batch_prediction(BatchPredictionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_delete_batch_prediction_:_BatchPredictionId">BatchPredictionId</code></td>
<td><p>[required] A user-supplied ID that uniquely identifies the
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

    svc$delete_batch_prediction(
      BatchPredictionId = "string"
    )
