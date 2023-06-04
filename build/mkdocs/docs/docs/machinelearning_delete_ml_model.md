<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>machinelearning_delete_ml_model</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns the DELETED status to an MLModel, rendering it unusable

### Description

Assigns the `DELETED` status to an `MLModel`, rendering it unusable.

After using the `delete_ml_model` operation, you can use the
`get_ml_model` operation to verify that the status of the `MLModel`
changed to DELETED.

**Caution:** The result of the `delete_ml_model` operation is
irreversible.

### Usage

    machinelearning_delete_ml_model(MLModelId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="machinelearning_delete_ml_model_:_MLModelId">MLModelId</code></td>
<td><p>[required] A user-supplied ID that uniquely identifies the
<code>MLModel</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MLModelId = "string"
    )

### Request syntax

    svc$delete_ml_model(
      MLModelId = "string"
    )
