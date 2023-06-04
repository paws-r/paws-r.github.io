<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_insights</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the latest analytics data for all your current active assessments

### Description

Gets the latest analytics data for all your current active assessments.

### Usage

    auditmanager_get_insights()

### Value

A list with the following syntax:

    list(
      insights = list(
        activeAssessmentsCount = 123,
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

    svc$get_insights()
