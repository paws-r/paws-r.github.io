<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_get_launch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details about one launch

### Description

Returns the details about one launch. You must already know the launch
name. To retrieve a list of launches in your account, use
`list_launches`.

### Usage

    cloudwatchevidently_get_launch(launch, project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_get_launch_:_launch">launch</code></td>
<td><p>[required] The name of the launch that you want to see the
details of.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_get_launch_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
launch.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      launch = list(
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
    )

### Request syntax

    svc$get_launch(
      launch = "string",
      project = "string"
    )
