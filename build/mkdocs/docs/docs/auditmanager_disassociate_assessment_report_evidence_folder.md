<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_disassociate_assessment_report_evidence_folder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an evidence folder from the specified assessment report in Audit Manager

### Description

Disassociates an evidence folder from the specified assessment report in
Audit Manager.

### Usage

    auditmanager_disassociate_assessment_report_evidence_folder(
      assessmentId, evidenceFolderId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_disassociate_assessment_report_evidence_folder_:_assessmentId">assessmentId</code></td>
<td><p>[required] The unique identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_disassociate_assessment_report_evidence_folder_:_evidenceFolderId">evidenceFolderId</code></td>
<td><p>[required] The unique identifier for the folder that the evidence
is stored in.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_assessment_report_evidence_folder(
      assessmentId = "string",
      evidenceFolderId = "string"
    )
