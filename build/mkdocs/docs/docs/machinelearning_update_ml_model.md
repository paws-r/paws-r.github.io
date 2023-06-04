<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_update_ml_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the MLModelName and the ScoreThreshold of an MLModel

### Description

Updates the `MLModelName` and the `ScoreThreshold` of an `MLModel`.

You can use the `get_ml_model` operation to view the contents of the
updated data element.

### Usage

    machinelearning_update_ml_model(MLModelId, MLModelName, ScoreThreshold)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_update_ml_model_:_MLModelId">MLModelId</code></td>
<td><p>[required] The ID assigned to the <code>MLModel</code> during
creation.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_update_ml_model_:_MLModelName">MLModelName</code></td>
<td><p>A user-supplied name or description of the
<code>MLModel</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="machinelearning_update_ml_model_:_ScoreThreshold">ScoreThreshold</code></td>
<td><p>The <code>ScoreThreshold</code> used in binary classification
<code>MLModel</code> that marks the boundary between a positive
prediction and a negative prediction.</p>
<p>Output values greater than or equal to the
<code>ScoreThreshold</code> receive a positive result from the
<code>MLModel</code>, such as <code>true</code>. Output values less than
the <code>ScoreThreshold</code> receive a negative response from the
<code>MLModel</code>, such as <code>false</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MLModelId = "string"
    )

### Request syntax

    svc$update_ml_model(
      MLModelId = "string",
      MLModelName = "string",
      ScoreThreshold = 123.0
    )
