<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_create_routing_control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new routing control

### Description

Creates a new routing control.

A routing control has one of two states: ON and OFF. You can map the
routing control state to the state of an Amazon Route 53 health check,
which can be used to control traffic routing.

To get or update the routing control state, see the Recovery Cluster
(data plane) API actions for Amazon Route 53 Application Recovery
Controller.

### Usage

    route53recoverycontrolconfig_create_routing_control(ClientToken,
      ClusterArn, ControlPanelArn, RoutingControlName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_create_routing_control_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive string of up to 64 ASCII characters. To
make an idempotent API request with an action, specify a client token in
the request.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_create_routing_control_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the cluster that
includes the routing control.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_create_routing_control_:_ControlPanelArn">ControlPanelArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the control panel that includes
the routing control.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_create_routing_control_:_RoutingControlName">RoutingControlName</code></td>
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

    svc$create_routing_control(
      ClientToken = "string",
      ClusterArn = "string",
      ControlPanelArn = "string",
      RoutingControlName = "string"
    )
