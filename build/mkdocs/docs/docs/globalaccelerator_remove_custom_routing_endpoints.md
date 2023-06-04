<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_remove_custom_routing_endpoints</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove endpoints from a custom routing accelerator

### Description

Remove endpoints from a custom routing accelerator.

### Usage

    globalaccelerator_remove_custom_routing_endpoints(EndpointIds,
      EndpointGroupArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_remove_custom_routing_endpoints_:_EndpointIds">EndpointIds</code></td>
<td><p>[required] The IDs for the endpoints. For custom routing
accelerators, endpoint IDs are the virtual private cloud (VPC) subnet
IDs.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_remove_custom_routing_endpoints_:_EndpointGroupArn">EndpointGroupArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the endpoint group
to remove endpoints from.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_custom_routing_endpoints(
      EndpointIds = list(
        "string"
      ),
      EndpointGroupArn = "string"
    )
