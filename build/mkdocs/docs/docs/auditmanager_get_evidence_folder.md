<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_evidence_folder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns an evidence folder from the specified assessment in Audit Manager

### Description

Returns an evidence folder from the specified assessment in Audit
Manager.

### Usage

    auditmanager_get_evidence_folder(assessmentId, controlSetId,
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
id="auditmanager_get_evidence_folder_:_assessmentId">assessmentId</code></td>
<td><p>[required] The unique identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_get_evidence_folder_:_controlSetId">controlSetId</code></td>
<td><p>[required] The unique identifier for the control set.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_get_evidence_folder_:_evidenceFolderId">evidenceFolderId</code></td>
<td><p>[required] The unique identifier for the folder that the evidence
is stored in.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      evidenceFolder = list(
        name = "string",
        date = as.POSIXct(
          "2015-01-01"
        ),
        assessmentId = "string",
        controlSetId = "string",
        controlId = "string",
        id = "string",
        dataSource = "string",
        author = "string",
        totalEvidence = 123,
        assessmentReportSelectionCount = 123,
        controlName = "string",
        evidenceResourcesIncludedCount = 123,
        evidenceByTypeConfigurationDataCount = 123,
        evidenceByTypeManualCount = 123,
        evidenceByTypeComplianceCheckCount = 123,
        evidenceByTypeComplianceCheckIssuesCount = 123,
        evidenceByTypeUserActivityCount = 123,
        evidenceAwsServiceSourceCount = 123
      )
    )

### Request syntax

    svc$get_evidence_folder(
      assessmentId = "string",
      controlSetId = "string",
      evidenceFolderId = "string"
    )
