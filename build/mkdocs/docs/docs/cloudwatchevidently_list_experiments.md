<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_list_experiments</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns configuration details about all the experiments in the specified project

### Description

Returns configuration details about all the experiments in the specified
project.

### Usage

    cloudwatchevidently_list_experiments(maxResults, nextToken, project,
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
id="cloudwatchevidently_list_experiments_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to include in the
response.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_list_experiments_:_nextToken">nextToken</code></td>
<td><p>The token to use when requesting the next set of results. You
received this token from a previous <code>list_experiments</code>
operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_list_experiments_:_project">project</code></td>
<td><p>[required] The name or ARN of the project to return the
experiment list from.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_list_experiments_:_status">status</code></td>
<td><p>Use this optional parameter to limit the returned results to only
the experiments with the status that you specify here.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      experiments = list(
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
          lastUpdatedTime = as.POSIXct(
            "2015-01-01"
          ),
          metricGoals = list(
            list(
              desiredChange = "INCREASE"|"DECREASE",
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
          onlineAbDefinition = list(
            controlTreatmentName = "string",
            treatmentWeights = list(
              123
            )
          ),
          project = "string",
          randomizationSalt = "string",
          samplingRate = 123,
          schedule = list(
            analysisCompleteTime = as.POSIXct(
              "2015-01-01"
            )
          ),
          segment = "string",
          status = "CREATED"|"UPDATING"|"RUNNING"|"COMPLETED"|"CANCELLED",
          statusReason = "string",
          tags = list(
            "string"
          ),
          treatments = list(
            list(
              description = "string",
              featureVariations = list(
                "string"
              ),
              name = "string"
            )
          ),
          type = "aws.evidently.onlineab"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_experiments(
      maxResults = 123,
      nextToken = "string",
      project = "string",
      status = "CREATED"|"UPDATING"|"RUNNING"|"COMPLETED"|"CANCELLED"
    )
