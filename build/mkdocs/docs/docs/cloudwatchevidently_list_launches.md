<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_list_launches</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns configuration details about all the launches in the specified project

### Description

Returns configuration details about all the launches in the specified
project.

### Usage

    cloudwatchevidently_list_launches(maxResults, nextToken, project,
      status)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_list_launches_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_list_launches_:_nextToken">nextToken</code></td>
<td><p>The token to use when requesting the next set of results. You
received this token from a previous <code>list_launches</code>
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_list_launches_:_project">project</code></td>
<td><p>[required] The name or ARN of the project to return the launch
list from.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_list_launches_:_status">status</code></td>
<td><p>Use this optional parameter to limit the returned results to only
the launches with the status that you specify here.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      launches = list(
        list(
          arn = "string",
          createdTime = as.POSIXct(
            "2015-01-01"
          ),
          description = "string",
          execution = list(
            endedTime = as.POSIXct(
              "2015-01-01"
            ),
            startedTime = as.POSIXct(
              "2015-01-01"
            )
          ),
          groups = list(
            list(
              description = "string",
              featureVariations = list(
                "string"
              ),
              name = "string"
            )
          ),
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          metricMonitors = list(
            list(
              metricDefinition = list(
                entityIdKey = "string",
                eventPattern = "string",
                name = "string",
                unitLabel = "string",
                valueKey = "string"
              )
            )
          ),
          name = "string",
          project = "string",
          randomizationSalt = "string",
          scheduledSplitsDefinition = list(
            steps = list(
              list(
                groupWeights = list(
                  123
                ),
                segmentOverrides = list(
                  list(
                    evaluationOrder = 123,
                    segment = "string",
                    weights = list(
                      123
                    )
                  )
                ),
                startTime = as.POSIXct(
                  "2015-01-01"
                )
              )
            )
          ),
          status = "CREATED"|"UPDATING"|"RUNNING"|"COMPLETED"|"CANCELLED",
          statusReason = "string",
          tags = list(
            "string"
          ),
          type = "aws.evidently.splits"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_launches(
      maxResults = 123,
      nextToken = "string",
      project = "string",
      status = "CREATED"|"UPDATING"|"RUNNING"|"COMPLETED"|"CANCELLED"
    )
