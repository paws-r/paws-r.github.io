<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>inspector2_cancel_findings_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the given findings report

### Description

Cancels the given findings report.

### Usage

    inspector2_cancel_findings_report(reportId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="inspector2_cancel_findings_report_:_reportId">reportId</code></td>
<td><p>[required] The ID of the report to be canceled.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      reportId = "string"
    )

### Request syntax

    svc$cancel_findings_report(
      reportId = "string"
    )
