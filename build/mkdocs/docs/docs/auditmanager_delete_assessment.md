<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_delete_assessment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an assessment in Audit Manager

### Description

Deletes an assessment in Audit Manager.

### Usage

    auditmanager_delete_assessment(assessmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_delete_assessment_:_assessmentId">assessmentId</code></td>
<td><p>[required] The identifier for the assessment.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_assessment(
      assessmentId = "string"
    )
