<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_assessment_report_url</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the URL of an assessment report in Audit Manager

### Description

Returns the URL of an assessment report in Audit Manager.

### Usage

    auditmanager_get_assessment_report_url(assessmentReportId, assessmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_get_assessment_report_url_:_assessmentReportId">assessmentReportId</code></td>
<td><p>[required] The unique identifier for the assessment
report.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_get_assessment_report_url_:_assessmentId">assessmentId</code></td>
<td><p>[required] The unique identifier for the assessment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      preSignedUrl = list(
        hyperlinkName = "string",
        link = "string"
      )
    )

### Request syntax

    svc$get_assessment_report_url(
      assessmentReportId = "string",
      assessmentId = "string"
    )
