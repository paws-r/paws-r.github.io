<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_update_launch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a launch of a given feature

### Description

Updates a launch of a given feature.

Don't use this operation to update the tags of an existing launch.
Instead, use `tag_resource`.

### Usage

    cloudwatchevidently_update_launch(description, groups, launch,
      metricMonitors, project, randomizationSalt, scheduledSplitsConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_launch_:_description">description</code></td>
<td><p>An optional description for the launch.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_launch_:_groups">groups</code></td>
<td><p>An array of structures that contains the feature and variations
that are to be used for the launch.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_launch_:_launch">launch</code></td>
<td><p>[required] The name of the launch that is to be updated.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_launch_:_metricMonitors">metricMonitors</code></td>
<td><p>An array of structures that define the metrics that will be used
to monitor the launch performance.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_launch_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that contains the
launch that you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_launch_:_randomizationSalt">randomizationSalt</code></td>
<td><p>When Evidently assigns a particular user session to a launch, it
must use a randomization ID to determine which variation the user
session is served. This randomization ID is a combination of the entity
ID and <code>randomizationSalt</code>. If you omit
<code>randomizationSalt</code>, Evidently uses the launch name as the
<code>randomizationSalt</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_launch_:_scheduledSplitsConfig">scheduledSplitsConfig</code></td>
<td><p>An array of structures that define the traffic allocation
percentages among the feature variations during each step of the
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

    svc$update_launch(
      description = "string",
      groups = list(
        list(
          description = "string",
          feature = "string",
          name = "string",
          variation = "string"
        )
      ),
      launch = "string",
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
      project = "string",
      randomizationSalt = "string",
      scheduledSplitsConfig = list(
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
      )
    )
