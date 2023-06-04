<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_describe_custom_routing_listener</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The description of a listener for a custom routing accelerator

### Description

The description of a listener for a custom routing accelerator.

### Usage

    globalaccelerator_describe_custom_routing_listener(ListenerArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_describe_custom_routing_listener_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the listener to
describe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Listener = list(
        ListenerArn = "string",
        PortRanges = list(
          list(
            FromPort = 123,
            ToPort = 123
          )
        )
      )
    )

### Request syntax

    svc$describe_custom_routing_listener(
      ListenerArn = "string"
    )
