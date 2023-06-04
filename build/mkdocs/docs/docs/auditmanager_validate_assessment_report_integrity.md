<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_validate_assessment_report_integrity</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Validates the integrity of an assessment report in Audit Manager

### Description

Validates the integrity of an assessment report in Audit Manager.

### Usage

    auditmanager_validate_assessment_report_integrity(s3RelativePath)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_validate_assessment_report_integrity_:_s3RelativePath">s3RelativePath</code></td>
<td><p>[required] The relative path of the Amazon S3 bucket that the
assessment report is stored in.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      signatureValid = TRUE|FALSE,
      signatureAlgorithm = "string",
      signatureDateTime = "string",
      signatureKeyId = "string",
      validationErrors = list(
        "string"
      )
    )

### Request syntax

    svc$validate_assessment_report_integrity(
      s3RelativePath = "string"
    )
