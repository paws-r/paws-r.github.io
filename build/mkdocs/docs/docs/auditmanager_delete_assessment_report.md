<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_delete_assessment_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an assessment report in Audit Manager

### Description

Deletes an assessment report in Audit Manager.

When you run the `delete_assessment_report` operation, Audit Manager
attempts to delete the following data:

1.  The specified assessment report that’s stored in your S3 bucket

2.  The associated metadata that’s stored in Audit Manager

If Audit Manager can’t access the assessment report in your S3 bucket,
the report isn’t deleted. In this event, the `delete_assessment_report`
operation doesn’t fail. Instead, it proceeds to delete the associated
metadata only. You must then delete the assessment report from the S3
bucket yourself.

This scenario happens when Audit Manager receives a `403 (Forbidden)` or
`⁠404 (Not Found)⁠` error from Amazon S3. To avoid this, make sure that
your S3 bucket is available, and that you configured the correct
permissions for Audit Manager to delete resources in your S3 bucket. For
an example permissions policy that you can use, see [Assessment report
destination
permissions](https://docs.aws.amazon.com/audit-manager/latest/userguide/security_iam_id-based-policy-examples.html#full-administrator-access-assessment-report-destination)
in the *Audit Manager User Guide*. For information about the issues that
could cause a `403 (Forbidden)` or `⁠404 (Not Found⁠`) error from Amazon
S3, see [List of Error
Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ErrorCodeList)
in the *Amazon Simple Storage Service API Reference*.

### Usage

    auditmanager_delete_assessment_report(assessmentId, assessmentReportId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_delete_assessment_report_:_assessmentId">assessmentId</code></td>
<td><p>[required] The unique identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_delete_assessment_report_:_assessmentReportId">assessmentReportId</code></td>
<td><p>[required] The unique identifier for the assessment
report.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_assessment_report(
      assessmentId = "string",
      assessmentReportId = "string"
    )
