<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_list_control_domain_insights_by_assessment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists analytics data for control domains within a specified active assessment

### Description

Lists analytics data for control domains within a specified active
assessment.

A control domain is listed only if at least one of the controls within
that domain collected evidence on the `lastUpdated` date of
`controlDomainInsights`. If this condition isn’t met, no data is listed
for that domain.

### Usage

    auditmanager_list_control_domain_insights_by_assessment(assessmentId,
      nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_list_control_domain_insights_by_assessment_:_assessmentId">assessmentId</code></td>
<td><p>[required] The unique identifier for the active
assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_list_control_domain_insights_by_assessment_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_list_control_domain_insights_by_assessment_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      controlDomainInsights = list(
        list(
          name = "string",
          id = "string",
          controlsCountByNoncompliantEvidence = 123,
          totalControlsCount = 123,
          evidenceInsights = list(
            noncompliantEvidenceCount = 123,
            compliantEvidenceCount = 123,
            inconclusiveEvidenceCount = 123
          ),
          lastUpdated = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_control_domain_insights_by_assessment(
      assessmentId = "string",
      nextToken = "string",
      maxResults = 123
    )
