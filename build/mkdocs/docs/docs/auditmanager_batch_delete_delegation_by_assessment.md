<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_batch_delete_delegation_by_assessment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a batch of delegations for an assessment in Audit Manager

### Description

Deletes a batch of delegations for an assessment in Audit Manager.

### Usage

    auditmanager_batch_delete_delegation_by_assessment(delegationIds,
      assessmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_batch_delete_delegation_by_assessment_:_delegationIds">delegationIds</code></td>
<td><p>[required] The identifiers for the delegations.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_batch_delete_delegation_by_assessment_:_assessmentId">assessmentId</code></td>
<td><p>[required] The identifier for the assessment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      errors = list(
        list(
          delegationId = "string",
          errorCode = "string",
          errorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_delete_delegation_by_assessment(
      delegationIds = list(
        "string"
      ),
      assessmentId = "string"
    )
