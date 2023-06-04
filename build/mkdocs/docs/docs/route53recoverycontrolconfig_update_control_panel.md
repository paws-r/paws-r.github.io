<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_update_control_panel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a control panel

### Description

Updates a control panel. The only update you can make to a control panel
is to change the name of the control panel.

### Usage

    route53recoverycontrolconfig_update_control_panel(ControlPanelArn,
      ControlPanelName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_update_control_panel_:_ControlPanelArn">ControlPanelArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the control
panel.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_update_control_panel_:_ControlPanelName">ControlPanelName</code></td>
<td><p>[required] The name of the control panel.</p></td>
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

    svc$update_control_panel(
      ControlPanelArn = "string",
      ControlPanelName = "string"
    )
