<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>backup_delete_report_plan</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the report plan specified by a report plan name

### Description

Deletes the report plan specified by a report plan name.

### Usage

    backup_delete_report_plan(ReportPlanName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="backup_delete_report_plan_:_ReportPlanName">ReportPlanName</code></td>
<td><p>[required] The unique name of a report plan.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_report_plan(
      ReportPlanName = "string"
    )
