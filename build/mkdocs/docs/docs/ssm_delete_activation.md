<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_delete_activation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an activation

### Description

Deletes an activation. You aren't required to delete an activation. If
you delete an activation, you can no longer use it to register
additional managed nodes. Deleting an activation doesn't de-register
managed nodes. You must manually de-register managed nodes.

### Usage

    ssm_delete_activation(ActivationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_delete_activation_:_ActivationId">ActivationId</code></td>
<td><p>[required] The ID of the activation that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_activation(
      ActivationId = "string"
    )
