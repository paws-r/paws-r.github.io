<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_list_assessment_reports</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of assessment reports created in Audit Manager

### Description

Returns a list of assessment reports created in Audit Manager.

### Usage

    auditmanager_list_assessment_reports(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_list_assessment_reports_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_list_assessment_reports_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentReports = list(
        list(
          id = "string",
          name = "string",
          description = "string",
          assessmentId = "string",
          assessmentName = "string",
          author = "string",
          status = "COMPLETE"|"IN_PROGRESS"|"FAILED",
          creationTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_assessment_reports(
      nextToken = "string",
      maxResults = 123
    )
