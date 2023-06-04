<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_create_custom_routing_listener</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Create a listener to process inbound connections from clients to a custom routing accelerator

### Description

Create a listener to process inbound connections from clients to a
custom routing accelerator. Connections arrive to assigned static IP
addresses on the port range that you specify.

### Usage

    globalaccelerator_create_custom_routing_listener(AcceleratorArn,
      PortRanges, IdempotencyToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_create_custom_routing_listener_:_AcceleratorArn">AcceleratorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the accelerator for
a custom routing listener.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_create_custom_routing_listener_:_PortRanges">PortRanges</code></td>
<td><p>[required] The port range to support for connections from clients
to your accelerator.</p>
<p>Separately, you set port ranges for endpoints. For more information,
see <a
href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html">About
endpoints for custom routing accelerators</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_create_custom_routing_listener_:_IdempotencyToken">IdempotencyToken</code></td>
<td><p>[required] A unique, case-sensitive identifier that you provide
to ensure the idempotency—that is, the uniqueness—of the
request.</p></td>
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

    svc$create_custom_routing_listener(
      AcceleratorArn = "string",
      PortRanges = list(
        list(
          FromPort = 123,
          ToPort = 123
        )
      ),
      IdempotencyToken = "string"
    )
