<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_predict</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Generates a prediction for the observation using the specified ML Model

### Description

Generates a prediction for the observation using the specified
`⁠ML Model⁠`.

**Note:** Not all response parameters will be populated. Whether a
response parameter is populated depends on the type of model requested.

### Usage

    machinelearning_predict(MLModelId, Record, PredictEndpoint)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="machinelearning_predict_:_MLModelId">MLModelId</code></td>
<td><p>[required] A unique identifier of the
<code>MLModel</code>.</p></td>
</tr>
<tr class="even">
<td><code id="machinelearning_predict_:_Record">Record</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_predict_:_PredictEndpoint">PredictEndpoint</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Prediction = list(
        predictedLabel = "string",
        predictedValue = 123.0,
        predictedScores = list(
          123.0
        ),
        details = list(
          "string"
        )
      )
    )

### Request syntax

    svc$predict(
      MLModelId = "string",
      Record = list(
        "string"
      ),
      PredictEndpoint = "string"
    )
