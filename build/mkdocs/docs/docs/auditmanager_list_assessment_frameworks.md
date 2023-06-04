<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>auditmanager_list_assessment_frameworks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the frameworks that are available in the Audit Manager framework library

### Description

Returns a list of the frameworks that are available in the Audit Manager
framework library.

### Usage

    auditmanager_list_assessment_frameworks(frameworkType, nextToken,
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
id="auditmanager_list_assessment_frameworks_:_frameworkType">frameworkType</code></td>
<td><p>[required] The type of framework, such as a standard framework or
a custom framework.</p></td>
</tr>
<tr class="even">
<td><code
id="auditmanager_list_assessment_frameworks_:_nextToken">nextToken</code></td>
<td><p>The pagination token that's used to fetch the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="auditmanager_list_assessment_frameworks_:_maxResults">maxResults</code></td>
<td><p>Represents the maximum number of results on a page or for an API
request call.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      frameworkMetadataList = list(
        list(
          arn = "string",
          id = "string",
          type = "Standard"|"Custom",
          name = "string",
          description = "string",
          logo = "string",
          complianceType = "string",
          controlsCount = 123,
          controlSetsCount = 123,
          createdAt = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_assessment_frameworks(
      frameworkType = "Standard"|"Custom",
      nextToken = "string",
      maxResults = 123
    )
