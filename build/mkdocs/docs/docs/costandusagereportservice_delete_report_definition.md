<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costandusagereportservice_delete_report_definition</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified report

### Description

Deletes the specified report.

### Usage

    costandusagereportservice_delete_report_definition(ReportName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costandusagereportservice_delete_report_definition_:_ReportName">ReportName</code></td>
<td><p>The name of the report that you want to delete. The name must be
unique, is case sensitive, and can't include spaces.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResponseMessage = "string"
    )

### Request syntax

    svc$delete_report_definition(
      ReportName = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes the AWS Cost and Usage report named
    # ExampleReport.
    svc$delete_report_definition(
      ReportName = "ExampleReport"
    )

    ## End(Not run)
