<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_insights_by_assessment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the latest analytics data for a specific active assessment

### Description

Gets the latest analytics data for a specific active assessment.

### Usage

    auditmanager_get_insights_by_assessment(assessmentId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_get_insights_by_assessment_:_assessmentId">assessmentId</code></td>
<td><p>[required] The unique identifier for the assessment.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      insights = list(
        noncompliantEvidenceCount = 123,
        compliantEvidenceCount = 123,
        inconclusiveEvidenceCount = 123,
        assessmentControlsCountByNoncompliantEvidence = 123,
        totalAssessmentControlsCount = 123,
        lastUpdated = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$get_insights_by_assessment(
      assessmentId = "string"
    )
