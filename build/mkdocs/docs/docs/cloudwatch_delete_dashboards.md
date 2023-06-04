<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatch_delete_dashboards</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes all dashboards that you specify

### Description

Deletes all dashboards that you specify. You can specify up to 100
dashboards to delete. If there is an error during this call, no
dashboards are deleted.

### Usage

    cloudwatch_delete_dashboards(DashboardNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatch_delete_dashboards_:_DashboardNames">DashboardNames</code></td>
<td><p>[required] The dashboards to be deleted. This parameter is
required.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_dashboards(
      DashboardNames = list(
        "string"
      )
    )
