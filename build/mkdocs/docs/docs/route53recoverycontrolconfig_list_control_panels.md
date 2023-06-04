<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53recoverycontrolconfig_list_control_panels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an array of control panels in an account or in a cluster

### Description

Returns an array of control panels in an account or in a cluster.

### Usage

    route53recoverycontrolconfig_list_control_panels(ClusterArn, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_list_control_panels_:_ClusterArn">ClusterArn</code></td>
<td><p>The Amazon Resource Name (ARN) of a cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="route53recoverycontrolconfig_list_control_panels_:_MaxResults">MaxResults</code></td>
<td><p>The number of objects that you want to return with this
call.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53recoverycontrolconfig_list_control_panels_:_NextToken">NextToken</code></td>
<td><p>The token that identifies which batch of results you want to
see.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ControlPanels = list(
        list(
          ClusterArn = "string",
          ControlPanelArn = "string",
          DefaultControlPanel = TRUE|FALSE,
          Name = "string",
          RoutingControlCount = 123,
          Status = "PENDING"|"DEPLOYED"|"PENDING_DELETION"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_control_panels(
      ClusterArn = "string",
      MaxResults = 123,
      NextToken = "string"
    )
