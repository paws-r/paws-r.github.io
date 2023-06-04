<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_evidence_folders_by_assessment</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the evidence folders from a specified assessment in Audit Manager

### Description

Returns the evidence folders from a specified assessment in Audit
Manager.

### Usage

    auditmanager_get_evidence_folders_by_assessment(assessmentId, nextToken,
      maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_get_evidence_folders_by_assessment_:_assessmentId">assessmentId</code></td>
<td><p>[required] The unique identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_get_evidence_folders_by_assessment_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_get_evidence_folders_by_assessment_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      evidenceFolders = list(
        list(
          name = "string",
          date = as.POSIXct(
            "2015-01-01"
          ),
          assessmentId = "string",
          controlSetId = "string",
          controlId = "string",
          id = "string",
          dataSource = "string",
          author = "string",
          totalEvidence = 123,
          assessmentReportSelectionCount = 123,
          controlName = "string",
          evidenceResourcesIncludedCount = 123,
          evidenceByTypeConfigurationDataCount = 123,
          evidenceByTypeManualCount = 123,
          evidenceByTypeComplianceCheckCount = 123,
          evidenceByTypeComplianceCheckIssuesCount = 123,
          evidenceByTypeUserActivityCount = 123,
          evidenceAwsServiceSourceCount = 123
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_evidence_folders_by_assessment(
      assessmentId = "string",
      nextToken = "string",
      maxResults = 123
    )
