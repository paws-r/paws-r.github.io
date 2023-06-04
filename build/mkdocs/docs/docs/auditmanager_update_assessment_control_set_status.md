<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_update_assessment_control_set_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the status of a control set in an Audit Manager assessment

### Description

Updates the status of a control set in an Audit Manager assessment.

### Usage

    auditmanager_update_assessment_control_set_status(assessmentId,
      controlSetId, status, comment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_update_assessment_control_set_status_:_assessmentId">assessmentId</code></td>
<td><p>[required] The unique identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_update_assessment_control_set_status_:_controlSetId">controlSetId</code></td>
<td><p>[required] The unique identifier for the control set.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_update_assessment_control_set_status_:_status">status</code></td>
<td><p>[required] The status of the control set that's being
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_update_assessment_control_set_status_:_comment">comment</code></td>
<td><p>[required] The comment that's related to the status
update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      controlSet = list(
        id = "string",
        description = "string",
        status = "ACTIVE"|"UNDER_REVIEW"|"REVIEWED",
        roles = list(
          list(
            roleType = "PROCESS_OWNER"|"RESOURCE_OWNER",
            roleArn = "string"
          )
        ),
        controls = list(
          list(
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
        ),
        delegations = list(
          list(
            id = "string",
            assessmentName = "string",
            assessmentId = "string",
            status = "IN_PROGRESS"|"UNDER_REVIEW"|"COMPLETE",
            roleArn = "string",
            roleType = "PROCESS_OWNER"|"RESOURCE_OWNER",
            creationTime = as.POSIXct(
              "2015-01-01"
            ),
            lastUpdated = as.POSIXct(
              "2015-01-01"
            ),
            controlSetId = "string",
            comment = "string",
            createdBy = "string"
          )
        ),
        systemEvidenceCount = 123,
        manualEvidenceCount = 123
      )
    )

### Request syntax

    svc$update_assessment_control_set_status(
      assessmentId = "string",
      controlSetId = "string",
      status = "ACTIVE"|"UNDER_REVIEW"|"REVIEWED",
      comment = "string"
    )
