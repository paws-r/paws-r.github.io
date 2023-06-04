<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_list_control_insights_by_control_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the latest analytics data for controls within a specific control domain across all active assessments

### Description

Lists the latest analytics data for controls within a specific control
domain across all active assessments.

Control insights are listed only if the control belongs to the control
domain that was specified and the control collected evidence on the
`lastUpdated` date of `controlInsightsMetadata`. If neither of these
conditions are met, no data is listed for that control.

### Usage

    auditmanager_list_control_insights_by_control_domain(controlDomainId,
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
id="auditmanager_list_control_insights_by_control_domain_:_controlDomainId">controlDomainId</code></td>
<td><p>[required] The unique identifier for the control domain.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_list_control_insights_by_control_domain_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_list_control_insights_by_control_domain_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      controlInsightsMetadata = list(
        list(
          name = "string",
          id = "string",
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

    svc$list_control_insights_by_control_domain(
      controlDomainId = "string",
      nextToken = "string",
      maxResults = 123
    )
