<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_update_dashboard_published_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the published version of a dashboard

### Description

Updates the published version of a dashboard.

### Usage

    quicksight_update_dashboard_published_version(AwsAccountId, DashboardId,
      VersionNumber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_update_dashboard_published_version_:_AwsAccountId">AwsAccountId</code></td>
<td><p>[required] The ID of the Amazon Web Services account that
contains the dashboard that you're updating.</p></td>
</tr>
<tr class="even">
<td><code
id="quicksight_update_dashboard_published_version_:_DashboardId">DashboardId</code></td>
<td><p>[required] The ID for the dashboard.</p></td>
</tr>
<tr class="odd">
<td><code
id="quicksight_update_dashboard_published_version_:_VersionNumber">VersionNumber</code></td>
<td><p>[required] The version number of the dashboard.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DashboardId = "string",
      DashboardArn = "string",
      Status = 123,
      RequestId = "string"
    )

### Request syntax

    svc$update_dashboard_published_version(
      AwsAccountId = "string",
      DashboardId = "string",
      VersionNumber = 123
    )
