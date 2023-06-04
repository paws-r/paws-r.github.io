<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_delete_listener</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a listener from an accelerator

### Description

Delete a listener from an accelerator.

### Usage

    globalaccelerator_delete_listener(ListenerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_delete_listener_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
listener.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_listener(
      ListenerArn = "string"
    )
