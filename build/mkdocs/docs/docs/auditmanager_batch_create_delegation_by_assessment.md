<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_batch_create_delegation_by_assessment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a batch of delegations for an assessment in Audit Manager

### Description

Creates a batch of delegations for an assessment in Audit Manager.

### Usage

    auditmanager_batch_create_delegation_by_assessment(
      createDelegationRequests, assessmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_batch_create_delegation_by_assessment_:_createDelegationRequests">createDelegationRequests</code></td>
<td><p>[required] The API request to batch create delegations in Audit
Manager.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_batch_create_delegation_by_assessment_:_assessmentId">assessmentId</code></td>
<td><p>[required] The identifier for the assessment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      errors = list(
        list(
          createDelegationRequest = list(
            comment = "string",
            controlSetId = "string",
            roleArn = "string",
            roleType = "PROCESS_OWNER"|"RESOURCE_OWNER"
          ),
          errorCode = "string",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_create_delegation_by_assessment(
      createDelegationRequests = list(
        list(
          comment = "string",
          controlSetId = "string",
          roleArn = "string",
          roleType = "PROCESS_OWNER"|"RESOURCE_OWNER"
        )
      ),
      assessmentId = "string"
    )
