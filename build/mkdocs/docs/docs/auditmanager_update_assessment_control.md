<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_update_assessment_control</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a control within an assessment in Audit Manager

### Description

Updates a control within an assessment in Audit Manager.

### Usage

    auditmanager_update_assessment_control(assessmentId, controlSetId,
      controlId, controlStatus, commentBody)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_update_assessment_control_:_assessmentId">assessmentId</code></td>
<td><p>[required] The unique identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_update_assessment_control_:_controlSetId">controlSetId</code></td>
<td><p>[required] The unique identifier for the control set.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_update_assessment_control_:_controlId">controlId</code></td>
<td><p>[required] The unique identifier for the control.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_update_assessment_control_:_controlStatus">controlStatus</code></td>
<td><p>The status of the control.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_update_assessment_control_:_commentBody">commentBody</code></td>
<td><p>The comment body text for the control.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      control = list(
        id = "string",
        name = "string",
        description = "string",
        status = "UNDER_REVIEW"|"REVIEWED"|"INACTIVE",
        response = "MANUAL"|"AUTOMATE"|"DEFER"|"IGNORE",
        comments = list(
          list(
            authorName = "string",
            commentBody = "string",
            postedDate = as.POSIXct(
              "2015-01-01"
            )
          )
        ),
        evidenceSources = list(
          "string"
        ),
        evidenceCount = 123,
        assessmentReportEvidenceCount = 123
      )
    )

### Request syntax

    svc$update_assessment_control(
      assessmentId = "string",
      controlSetId = "string",
      controlId = "string",
      controlStatus = "UNDER_REVIEW"|"REVIEWED"|"INACTIVE",
      commentBody = "string"
    )
