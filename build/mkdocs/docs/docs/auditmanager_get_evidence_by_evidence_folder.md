<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_evidence_by_evidence_folder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns all evidence from a specified evidence folder in Audit Manager

### Description

Returns all evidence from a specified evidence folder in Audit Manager.

### Usage

    auditmanager_get_evidence_by_evidence_folder(assessmentId, controlSetId,
      evidenceFolderId, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_get_evidence_by_evidence_folder_:_assessmentId">assessmentId</code></td>
<td><p>[required] The identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_get_evidence_by_evidence_folder_:_controlSetId">controlSetId</code></td>
<td><p>[required] The identifier for the control set.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_get_evidence_by_evidence_folder_:_evidenceFolderId">evidenceFolderId</code></td>
<td><p>[required] The unique identifier for the folder that the evidence
is stored in.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_get_evidence_by_evidence_folder_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_get_evidence_by_evidence_folder_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      evidence = list(
        list(
          dataSource = "string",
          evidenceAwsAccountId = "string",
          time = as.POSIXct(
            "2015-01-01"
          ),
          eventSource = "string",
          eventName = "string",
          evidenceByType = "string",
          resourcesIncluded = list(
            list(
              arn = "string",
              value = "string",
              complianceCheck = "string"
            )
          ),
          attributes = list(
            "string"
          ),
          iamId = "string",
          complianceCheck = "string",
          awsOrganization = "string",
          awsAccountId = "string",
          evidenceFolderId = "string",
          id = "string",
          assessmentReportSelection = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_evidence_by_evidence_folder(
      assessmentId = "string",
      controlSetId = "string",
      evidenceFolderId = "string",
      nextToken = "string",
      maxResults = 123
    )
