<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_list_projects</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns configuration details about all the projects in the current Region in your account

### Description

Returns configuration details about all the projects in the current
Region in your account.

### Usage

    cloudwatchevidently_list_projects(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_list_projects_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_list_projects_:_nextToken">nextToken</code></td>
<td><p>The token to use when requesting the next set of results. You
received this token from a previous <code>list_projects</code>
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      nextToken = "string",
      projects = list(
        list(
          activeExperimentCount = 123,
          activeLaunchCount = 123,
          arn = "string",
          createdTime = as.POSIXct(
            "2015-01-01"
          ),
          description = "string",
          experimentCount = 123,
          featureCount = 123,
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          launchCount = 123,
          name = "string",
          status = "AVAILABLE"|"UPDATING",
          tags = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_projects(
      maxResults = 123,
      nextToken = "string"
    )
