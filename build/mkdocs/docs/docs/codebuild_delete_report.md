<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_delete_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a report

### Description

Deletes a report.

### Usage

    codebuild_delete_report(arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_delete_report_:_arn">arn</code></td>
<td><p>[required] The ARN of the report to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_report(
      arn = "string"
    )
