<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_get_dashboard</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays the details of the dashboard that you specify

### Description

Displays the details of the dashboard that you specify.

To copy an existing dashboard, use `get_dashboard`, and then use the
data returned within `DashboardBody` as the template for the new
dashboard when you call `put_dashboard` to create the copy.

### Usage

    cloudwatch_get_dashboard(DashboardName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_get_dashboard_:_DashboardName">DashboardName</code></td>
<td><p>[required] The name of the dashboard to be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DashboardArn = "string",
      DashboardBody = "string",
      DashboardName = "string"
    )

### Request syntax

    svc$get_dashboard(
      DashboardName = "string"
    )
