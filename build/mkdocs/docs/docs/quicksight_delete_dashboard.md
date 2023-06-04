<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_delete_dashboard</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a dashboard

### Description

Deletes a dashboard.

### Usage

    quicksight_delete_dashboard(AwsAccountId, DashboardId, VersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_delete_dashboard_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the dashboard that you're deleting.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_delete_dashboard_:_DashboardId">DashboardId</code></td>
<td><p>[required] The ID for the dashboard.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_delete_dashboard_:_VersionNumber">VersionNumber</code></td>
<td><p>The version number of the dashboard. If the version number
property is provided, only the specified version of the dashboard is
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Status = 123,
      Arn = "string",
      DashboardId = "string",
      RequestId = "string"
    )

### Request syntax

    svc$delete_dashboard(
      AwsAccountId = "string",
      DashboardId = "string",
      VersionNumber = 123
    )
