<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_delete_control_panel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a control panel

### Description

Deletes a control panel.

### Usage

    route53recoverycontrolconfig_delete_control_panel(ControlPanelArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_delete_control_panel_:_ControlPanelArn">ControlPanelArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the control
panel.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_control_panel(
      ControlPanelArn = "string"
    )
