<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_batch_associate_assessment_report_evidence</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a list of evidence to an assessment report in an Audit Manager assessment

### Description

Associates a list of evidence to an assessment report in an Audit
Manager assessment.

### Usage

    auditmanager_batch_associate_assessment_report_evidence(assessmentId,
      evidenceFolderId, evidenceIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_batch_associate_assessment_report_evidence_:_assessmentId">assessmentId</code></td>
<td><p>[required] The identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_batch_associate_assessment_report_evidence_:_evidenceFolderId">evidenceFolderId</code></td>
<td><p>[required] The identifier for the folder that the evidence is
stored in.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_batch_associate_assessment_report_evidence_:_evidenceIds">evidenceIds</code></td>
<td><p>[required] The list of evidence identifiers.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      evidenceIds = list(
        "string"
      ),
      errors = list(
        list(
          evidenceId = "string",
          errorCode = "string",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_associate_assessment_report_evidence(
      assessmentId = "string",
      evidenceFolderId = "string",
      evidenceIds = list(
        "string"
      )
    )
