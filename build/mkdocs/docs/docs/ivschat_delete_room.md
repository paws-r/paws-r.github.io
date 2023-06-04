<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ivschat_delete_room</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified room

### Description

Deletes the specified room.

### Usage

    ivschat_delete_room(identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ivschat_delete_room_:_identifier">identifier</code></td>
<td><p>[required] Identifier of the room to be deleted. Currently this
must be an ARN.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_room(
      identifier = "string"
    )
