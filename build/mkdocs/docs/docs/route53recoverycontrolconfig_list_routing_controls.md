<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_list_routing_controls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of routing controls for a control panel

### Description

Returns an array of routing controls for a control panel. A routing
control is an Amazon Route 53 Application Recovery Controller construct
that has one of two states: ON and OFF. You can map the routing control
state to the state of an Amazon Route 53 health check, which can be used
to control routing.

### Usage

    route53recoverycontrolconfig_list_routing_controls(ControlPanelArn,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_list_routing_controls_:_ControlPanelArn">ControlPanelArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the control
panel.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_list_routing_controls_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_list_routing_controls_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      RoutingControls = list(
        list(
          ControlPanelArn = "string",
          Name = "string",
          RoutingControlArn = "string",
          Status = "PENDING"|"DEPLOYED"|"PENDING_DELETION"
        )
      )
    )

### Request syntax

    svc$list_routing_controls(
      ControlPanelArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
