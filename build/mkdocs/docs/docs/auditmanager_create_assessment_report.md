<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_create_assessment_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an assessment report for the specified assessment

### Description

Creates an assessment report for the specified assessment.

### Usage

    auditmanager_create_assessment_report(name, description, assessmentId,
      queryStatement)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_create_assessment_report_:_name">name</code></td>
<td><p>[required] The name of the new assessment report.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_create_assessment_report_:_description">description</code></td>
<td><p>The description of the assessment report.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_create_assessment_report_:_assessmentId">assessmentId</code></td>
<td><p>[required] The identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_create_assessment_report_:_queryStatement">queryStatement</code></td>
<td><p>A SQL statement that represents an evidence finder query.</p>
<p>Provide this parameter when you want to generate an assessment report
from the results of an evidence finder search query. When you use this
parameter, Audit Manager generates a one-time report using only the
evidence from the query output. This report does not include any
assessment evidence that was manually <a
href="https://docs.aws.amazon.com/audit-manager/latest/userguide/generate-assessment-report.html#generate-assessment-report-include-evidence">added
to a report using the console</a>, or <a
href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_BatchAssociateAssessmentReportEvidence.html">associated
with a report using the API</a>.</p>
<p>To use this parameter, the <a
href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_EvidenceFinderEnablement.html#auditmanager-Type-EvidenceFinderEnablement-enablementStatus">enablementStatus</a>
of evidence finder must be <code>ENABLED</code>.</p>
<p>For examples and help resolving <code>queryStatement</code>
validation exceptions, see <a
href="https://docs.aws.amazon.com/audit-manager/latest/userguide/evidence-finder-issues.html#querystatement-exceptions">Troubleshooting
evidence finder issues</a> in the <em>Audit Manager User
Guide.</em></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentReport = list(
        id = "string",
        name = "string",
        description = "string",
        awsAccountId = "string",
        assessmentId = "string",
        assessmentName = "string",
        author = "string",
        status = "COMPLETE"|"IN_PROGRESS"|"FAILED",
        creationTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_assessment_report(
      name = "string",
      description = "string",
      assessmentId = "string",
      queryStatement = "string"
    )
