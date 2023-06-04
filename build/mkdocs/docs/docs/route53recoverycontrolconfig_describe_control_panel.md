<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_describe_control_panel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays details about a control panel

### Description

Displays details about a control panel.

### Usage

    route53recoverycontrolconfig_describe_control_panel(ControlPanelArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_describe_control_panel_:_ControlPanelArn">ControlPanelArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the control
panel.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ControlPanel = list(
        ClusterArn = "string",
        ControlPanelArn = "string",
        DefaultControlPanel = TRUE|FALSE,
        Name = "string",
        RoutingControlCount = 123,
        Status = "PENDING"|"DEPLOYED"|"PENDING_DELETION"
      )
    )

### Request syntax

    svc$describe_control_panel(
      ControlPanelArn = "string"
    )
