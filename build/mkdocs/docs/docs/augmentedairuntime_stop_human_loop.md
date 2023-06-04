<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>augmentedairuntime_stop_human_loop</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops the specified human loop

### Description

Stops the specified human loop.

### Usage

    augmentedairuntime_stop_human_loop(HumanLoopName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="augmentedairuntime_stop_human_loop_:_HumanLoopName">HumanLoopName</code></td>
<td><p>[required] The name of the human loop that you want to
stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_human_loop(
      HumanLoopName = "string"
    )
