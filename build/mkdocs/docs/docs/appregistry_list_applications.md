<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>appregistry_list_applications</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list of all of your applications

### Description

Retrieves a list of all of your applications. Results are paginated.

### Usage

    appregistry_list_applications(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="appregistry_list_applications_:_nextToken">nextToken</code></td>
<td><p>The token to use to get the next page of results after a previous
API call.</p></td>
</tr>
<tr class="even">
<td><code
id="appregistry_list_applications_:_maxResults">maxResults</code></td>
<td><p>The upper bound of the number of results to return (cannot exceed
25). If this parameter is omitted, it defaults to 25. This value is
optional.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      applications = list(
        list(
          id = "string",
          arn = "string",
          name = "string",
          description = "string",
          creationTime = as.POSIXct(
            "2015-01-01"
          ),
          lastUpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_applications(
      nextToken = "string",
      maxResults = 123
    )
