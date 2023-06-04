<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_list_features</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns configuration details about all the features in the specified project

### Description

Returns configuration details about all the features in the specified
project.

### Usage

    cloudwatchevidently_list_features(maxResults, nextToken, project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_list_features_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_list_features_:_nextToken">nextToken</code></td>
<td><p>The token to use when requesting the next set of results. You
received this token from a previous <code>list_features</code>
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_list_features_:_project">project</code></td>
<td><p>[required] The name or ARN of the project to return the feature
list from.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      features = list(
        list(
          arn = "string",
          createdTime = as.POSIXct(
            "2015-01-01"
          ),
          defaultVariation = "string",
          evaluationRules = list(
            list(
              name = "string",
              type = "string"
            )
          ),
          evaluationStrategy = "ALL_RULES"|"DEFAULT_VARIATION",
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          name = "string",
          project = "string",
          status = "AVAILABLE"|"UPDATING",
          tags = list(
            "string"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_features(
      maxResults = 123,
      nextToken = "string",
      project = "string"
    )
