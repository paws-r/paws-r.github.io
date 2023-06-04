<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_put_dashboard</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a dashboard if it does not already exist, or updates an existing dashboard

### Description

Creates a dashboard if it does not already exist, or updates an existing
dashboard. If you update a dashboard, the entire contents are replaced
with what you specify here.

All dashboards in your account are global, not region-specific.

A simple way to create a dashboard using `put_dashboard` is to copy an
existing dashboard. To copy an existing dashboard using the console, you
can load the dashboard and then use the View/edit source command in the
Actions menu to display the JSON block for that dashboard. Another way
to copy a dashboard is to use `get_dashboard`, and then use the data
returned within `DashboardBody` as the template for the new dashboard
when you call `put_dashboard`.

When you create a dashboard with `put_dashboard`, a good practice is to
add a text widget at the top of the dashboard with a message that the
dashboard was created by script and should not be changed in the
console. This message could also point console users to the location of
the `DashboardBody` script or the CloudFormation template used to create
the dashboard.

### Usage

    cloudwatch_put_dashboard(DashboardName, DashboardBody)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_put_dashboard_:_DashboardName">DashboardName</code></td>
<td><p>[required] The name of the dashboard. If a dashboard with this
name already exists, this call modifies that dashboard, replacing its
current contents. Otherwise, a new dashboard is created. The maximum
length is 255, and valid characters are A-Z, a-z, 0-9, "-", and "_".
This parameter is required.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatch_put_dashboard_:_DashboardBody">DashboardBody</code></td>
<td><p>[required] The detailed information about the dashboard in JSON
format, including the widgets to include and their location on the
dashboard. This parameter is required.</p>
<p>For more information about the syntax, see <a
href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html">Dashboard
Body Structure and Syntax</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DashboardValidationMessages = list(
        list(
          DataPath = "string",
          Message = "string"
        )
      )
    )

### Request syntax

    svc$put_dashboard(
      DashboardName = "string",
      DashboardBody = "string"
    )
