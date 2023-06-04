<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_create_control_panel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new control panel

### Description

Creates a new control panel. A control panel represents a group of
routing controls that can be changed together in a single transaction.
You can use a control panel to centrally view the operational status of
applications across your organization, and trigger multi-app failovers
in a single transaction, for example, to fail over an Availability Zone
or Amazon Web Services Region.

### Usage

    route53recoverycontrolconfig_create_control_panel(ClientToken,
      ClusterArn, ControlPanelName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_create_control_panel_:_ClientToken">ClientToken</code></td>
<td><p>A unique, case-sensitive string of up to 64 ASCII characters. To
make an idempotent API request with an action, specify a client token in
the request.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_create_control_panel_:_ClusterArn">ClusterArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the cluster for the
control panel.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_create_control_panel_:_ControlPanelName">ControlPanelName</code></td>
<td><p>[required] The name of the control panel.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_create_control_panel_:_Tags">Tags</code></td>
<td><p>The tags associated with the control panel.</p></td>
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

    svc$create_control_panel(
      ClientToken = "string",
      ClusterArn = "string",
      ControlPanelName = "string",
      Tags = list(
        "string"
      )
    )
