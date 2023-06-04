<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_list_assessment_framework_share_requests</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of sent or received share requests for custom frameworks in Audit Manager

### Description

Returns a list of sent or received share requests for custom frameworks
in Audit Manager.

### Usage

    auditmanager_list_assessment_framework_share_requests(requestType,
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
id="auditmanager_list_assessment_framework_share_requests_:_requestType">requestType</code></td>
<td><p>[required] Specifies whether the share request is a sent request
or a received request.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_list_assessment_framework_share_requests_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_list_assessment_framework_share_requests_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      assessmentFrameworkShareRequests = list(
        list(
          id = "string",
          frameworkId = "string",
          frameworkName = "string",
          frameworkDescription = "string",
          status = "ACTIVE"|"REPLICATING"|"SHARED"|"EXPIRING"|"FAILED"|"EXPIRED"|"DECLINED"|"REVOKED",
          sourceAccount = "string",
          destinationAccount = "string",
          destinationRegion = "string",
          expirationTime = as.POSIXct(
            "2015-01-01"
          ),
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdated = as.POSIXct(
            "2015-01-01"
          ),
          comment = "string",
          standardControlsCount = 123,
          customControlsCount = 123,
          complianceType = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_assessment_framework_share_requests(
      requestType = "SENT"|"RECEIVED",
      nextToken = "string",
      maxResults = 123
    )
