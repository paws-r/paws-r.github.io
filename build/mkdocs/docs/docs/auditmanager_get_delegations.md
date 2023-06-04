<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_get_delegations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of delegations from an audit owner to a delegate

### Description

Returns a list of delegations from an audit owner to a delegate.

### Usage

    auditmanager_get_delegations(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_get_delegations_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_get_delegations_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      delegations = list(
        list(
          id = "string",
          assessmentName = "string",
          assessmentId = "string",
          status = "IN_PROGRESS"|"UNDER_REVIEW"|"COMPLETE",
          roleArn = "string",
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          controlSetName = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_delegations(
      nextToken = "string",
      maxResults = 123
    )
