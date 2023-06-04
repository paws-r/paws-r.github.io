<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_update_routing_control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a routing control

### Description

Updates a routing control. You can only update the name of the routing
control. To get or update the routing control state, see the Recovery
Cluster (data plane) API actions for Amazon Route 53 Application
Recovery Controller.

### Usage

    route53recoverycontrolconfig_update_routing_control(RoutingControlArn,
      RoutingControlName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_update_routing_control_:_RoutingControlArn">RoutingControlArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the routing
control.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_update_routing_control_:_RoutingControlName">RoutingControlName</code></td>
<td><p>[required] The name of the routing control.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RoutingControl = list(
        ControlPanelArn = "string",
        Name = "string",
        RoutingControlArn = "string",
        Status = "PENDING"|"DEPLOYED"|"PENDING_DELETION"
      )
    )

### Request syntax

    svc$update_routing_control(
      RoutingControlArn = "string",
      RoutingControlName = "string"
    )
