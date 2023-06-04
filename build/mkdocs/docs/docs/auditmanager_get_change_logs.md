<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_change_logs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of changelogs from Audit Manager

### Description

Returns a list of changelogs from Audit Manager.

### Usage

    auditmanager_get_change_logs(assessmentId, controlSetId, controlId,
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
id="auditmanager_get_change_logs_:_assessmentId">assessmentId</code></td>
<td><p>[required] The unique identifier for the assessment.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_get_change_logs_:_controlSetId">controlSetId</code></td>
<td><p>The unique identifier for the control set.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_get_change_logs_:_controlId">controlId</code></td>
<td><p>The unique identifier for the control.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_get_change_logs_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_get_change_logs_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      changeLogs = list(
        list(
          objectType = "ASSESSMENT"|"CONTROL_SET"|"CONTROL"|"DELEGATION"|"ASSESSMENT_REPORT",
          objectName = "string",
          action = "CREATE"|"UPDATE_METADATA"|"ACTIVE"|"INACTIVE"|"DELETE"|"UNDER_REVIEW"|"REVIEWED"|"IMPORT_EVIDENCE",
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          createdBy = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_change_logs(
      assessmentId = "string",
      controlSetId = "string",
      controlId = "string",
      nextToken = "string",
      maxResults = 123
    )
