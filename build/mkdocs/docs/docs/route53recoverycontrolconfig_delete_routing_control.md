<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_delete_routing_control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a routing control

### Description

Deletes a routing control.

### Usage

    route53recoverycontrolconfig_delete_routing_control(RoutingControlArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_delete_routing_control_:_RoutingControlArn">RoutingControlArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the routing control
that you're deleting.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_routing_control(
      RoutingControlArn = "string"
    )
