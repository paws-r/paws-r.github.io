<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_list_notifications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all Audit Manager notifications

### Description

Returns a list of all Audit Manager notifications.

### Usage

    auditmanager_list_notifications(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="auditmanager_list_notifications_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_list_notifications_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      notifications = list(
        list(
          id = "string",
          assessmentId = "string",
          assessmentName = "string",
          controlSetId = "string",
          controlSetName = "string",
          description = "string",
          eventTime = as.POSIXct(
            "2015-01-01"
          ),
          source = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_notifications(
      nextToken = "string",
      maxResults = 123
    )
