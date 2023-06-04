<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_delete_evaluation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns the DELETED status to an Evaluation, rendering it unusable

### Description

Assigns the `DELETED` status to an `Evaluation`, rendering it unusable.

After invoking the `delete_evaluation` operation, you can use the
`get_evaluation` operation to verify that the status of the `Evaluation`
changed to `DELETED`.

**Caution:** The results of the `delete_evaluation` operation are
irreversible.

### Usage

    machinelearning_delete_evaluation(EvaluationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_delete_evaluation_:_EvaluationId">EvaluationId</code></td>
<td><p>[required] A user-supplied ID that uniquely identifies the
<code>Evaluation</code> to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationId = "string"
    )

### Request syntax

    svc$delete_evaluation(
      EvaluationId = "string"
    )
