<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_delete_custom_routing_listener</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete a listener for a custom routing accelerator

### Description

Delete a listener for a custom routing accelerator.

### Usage

    globalaccelerator_delete_custom_routing_listener(ListenerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_delete_custom_routing_listener_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the listener to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_custom_routing_listener(
      ListenerArn = "string"
    )
