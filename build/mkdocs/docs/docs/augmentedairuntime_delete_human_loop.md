<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>augmentedairuntime_delete_human_loop</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified human loop for a flow definition

### Description

Deletes the specified human loop for a flow definition.

If the human loop was deleted, this operation will return a
`ResourceNotFoundException`.

### Usage

    augmentedairuntime_delete_human_loop(HumanLoopName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="augmentedairuntime_delete_human_loop_:_HumanLoopName">HumanLoopName</code></td>
<td><p>[required] The name of the human loop that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_human_loop(
      HumanLoopName = "string"
    )
