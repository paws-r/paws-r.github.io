<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_update_custom_routing_listener</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update a listener for a custom routing accelerator

### Description

Update a listener for a custom routing accelerator.

### Usage

    globalaccelerator_update_custom_routing_listener(ListenerArn,
      PortRanges)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_update_custom_routing_listener_:_ListenerArn">ListenerArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the listener to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_update_custom_routing_listener_:_PortRanges">PortRanges</code></td>
<td><p>[required] The updated port range to support for connections from
clients to your accelerator. If you remove ports that are currently
being used by a subnet endpoint, the call fails.</p>
<p>Separately, you set port ranges for endpoints. For more information,
see <a
href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html">About
endpoints for custom routing accelerators</a>.</p></td>
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

    svc$update_custom_routing_listener(
      ListenerArn = "string",
      PortRanges = list(
        list(
          FromPort = 123,
          ToPort = 123
        )
      )
    )
