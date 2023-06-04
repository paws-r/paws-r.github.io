<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_list_assessments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of current and past assessments from Audit Manager

### Description

Returns a list of current and past assessments from Audit Manager.

### Usage

    auditmanager_list_assessments(status, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="auditmanager_list_assessments_:_status">status</code></td>
<td><p>The current status of the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_list_assessments_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_list_assessments_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentMetadata = list(
        list(
          name = "string",
          id = "string",
          complianceType = "string",
          status = "ACTIVE"|"INACTIVE",
          roles = list(
            list(
              roleType = "PROCESS_OWNER"|"RESOURCE_OWNER",
              roleArn = "string"
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
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdated = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_assessments(
      status = "ACTIVE"|"INACTIVE",
      nextToken = "string",
      maxResults = 123
    )
