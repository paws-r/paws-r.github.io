<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationcostprofiler_delete_report_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified report definition in AWS Application Cost Profiler

### Description

Deletes the specified report definition in AWS Application Cost
Profiler. This stops the report from being generated.

### Usage

    applicationcostprofiler_delete_report_definition(reportId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationcostprofiler_delete_report_definition_:_reportId">reportId</code></td>
<td><p>[required] Required. ID of the report to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      reportId = "string"
    )

### Request syntax

    svc$delete_report_definition(
      reportId = "string"
    )
