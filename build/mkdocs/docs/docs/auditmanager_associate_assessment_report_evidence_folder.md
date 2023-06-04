<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_associate_assessment_report_evidence_folder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an evidence folder to an assessment report in an Audit Manager assessment

### Description

Associates an evidence folder to an assessment report in an Audit
Manager assessment.

### Usage

    auditmanager_associate_assessment_report_evidence_folder(assessmentId,
      evidenceFolderId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_associate_assessment_report_evidence_folder_:_assessmentId">assessmentId</code></td>
<td><p>[required] The identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_associate_assessment_report_evidence_folder_:_evidenceFolderId">evidenceFolderId</code></td>
<td><p>[required] The identifier for the folder that the evidence is
stored in.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_assessment_report_evidence_folder(
      assessmentId = "string",
      evidenceFolderId = "string"
    )
