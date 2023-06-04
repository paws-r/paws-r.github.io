<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_update_evaluation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the EvaluationName of an Evaluation

### Description

Updates the `EvaluationName` of an `Evaluation`.

You can use the `get_evaluation` operation to view the contents of the
updated data element.

### Usage

    machinelearning_update_evaluation(EvaluationId, EvaluationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_update_evaluation_:_EvaluationId">EvaluationId</code></td>
<td><p>[required] The ID assigned to the <code>Evaluation</code> during
creation.</p></td>
</tr>
<tr class="even">
<td><code
id="machinelearning_update_evaluation_:_EvaluationName">EvaluationName</code></td>
<td><p>[required] A new user-supplied name or description of the
<code>Evaluation</code> that will replace the current content.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationId = "string"
    )

### Request syntax

    svc$update_evaluation(
      EvaluationId = "string",
      EvaluationName = "string"
    )
