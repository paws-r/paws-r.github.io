<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_evidence</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns evidence from Audit Manager

### Description

Returns evidence from Audit Manager.

### Usage

    auditmanager_get_evidence(assessmentId, controlSetId, evidenceFolderId,
      evidenceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_get_evidence_:_assessmentId">assessmentId</code></td>
<td><p>[required] The unique identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_get_evidence_:_controlSetId">controlSetId</code></td>
<td><p>[required] The unique identifier for the control set.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_get_evidence_:_evidenceFolderId">evidenceFolderId</code></td>
<td><p>[required] The unique identifier for the folder that the evidence
is stored in.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_get_evidence_:_evidenceId">evidenceId</code></td>
<td><p>[required] The unique identifier for the evidence.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      evidence = list(
        dataSource = "string",
        evidenceAwsAccountId = "string",
        time = as.POSIXct(
          "2015-01-01"
        ),
        eventSource = "string",
        eventName = "string",
        evidenceByType = "string",
        resourcesIncluded = list(
          list(
            arn = "string",
            value = "string",
            complianceCheck = "string"
          )
        ),
        attributes = list(
          "string"
        ),
        iamId = "string",
        complianceCheck = "string",
        awsOrganization = "string",
        awsAccountId = "string",
        evidenceFolderId = "string",
        id = "string",
        assessmentReportSelection = "string"
      )
    )

### Request syntax

    svc$get_evidence(
      assessmentId = "string",
      controlSetId = "string",
      evidenceFolderId = "string",
      evidenceId = "string"
    )
