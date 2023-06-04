<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_delete_rotation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a rotation from the system

### Description

Deletes a rotation from the system. If a rotation belongs to more than
one on-call schedule, this operation deletes it from all of them.

### Usage

    ssmcontacts_delete_rotation(RotationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_delete_rotation_:_RotationId">RotationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the on-call rotation
to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_rotation(
      RotationId = "string"
    )
