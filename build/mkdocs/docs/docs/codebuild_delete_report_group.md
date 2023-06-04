<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_delete_report_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a report group

### Description

Deletes a report group. Before you delete a report group, you must
delete its reports.

### Usage

    codebuild_delete_report_group(arn, deleteReports)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_delete_report_group_:_arn">arn</code></td>
<td><p>[required] The ARN of the report group to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_delete_report_group_:_deleteReports">deleteReports</code></td>
<td><p>If <code>true</code>, deletes any reports that belong to a report
group before deleting the report group.</p>
<p>If <code>false</code>, you must delete any reports in the report
group. Use <code>list_reports_for_report_group</code> to get the reports
in a report group. Use <code>delete_report</code> to delete the reports.
If you call <code>delete_report_group</code> for a report group that
contains one or more reports, an exception is thrown.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_report_group(
      arn = "string",
      deleteReports = TRUE|FALSE
    )
