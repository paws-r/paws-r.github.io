<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_delete_rotation_override</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing override for an on-call rotation

### Description

Deletes an existing override for an on-call rotation.

### Usage

    ssmcontacts_delete_rotation_override(RotationId, RotationOverrideId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_delete_rotation_override_:_RotationId">RotationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the rotation that
was overridden.</p></td>
</tr>
<tr class="even">
<td><code
id="ssmcontacts_delete_rotation_override_:_RotationOverrideId">RotationOverrideId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the on-call rotation
override to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_rotation_override(
      RotationId = "string",
      RotationOverrideId = "string"
    )
