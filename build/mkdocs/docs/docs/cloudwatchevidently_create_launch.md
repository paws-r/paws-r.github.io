<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_create_launch</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a launch of a given feature

### Description

Creates a *launch* of a given feature. Before you create a launch, you
must create the feature to use for the launch.

You can use a launch to safely validate new features by serving them to
a specified percentage of your users while you roll out the feature. You
can monitor the performance of the new feature to help you decide when
to ramp up traffic to more users. This helps you reduce risk and
identify unintended consequences before you fully launch the feature.

Don't use this operation to update an existing launch. Instead, use
`update_launch`.

### Usage

    cloudwatchevidently_create_launch(description, groups, metricMonitors,
      name, project, randomizationSalt, scheduledSplitsConfig, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_launch_:_description">description</code></td>
<td><p>An optional description for the launch.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_launch_:_groups">groups</code></td>
<td><p>[required] An array of structures that contains the feature and
variations that are to be used for the launch.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_launch_:_metricMonitors">metricMonitors</code></td>
<td><p>An array of structures that define the metrics that will be used
to monitor the launch performance.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatchevidently_create_launch_:_name">name</code></td>
<td><p>[required] The name for the new launch.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_launch_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that you want to create
the launch in.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_create_launch_:_randomizationSalt">randomizationSalt</code></td>
<td><p>When Evidently assigns a particular user session to a launch, it
must use a randomization ID to determine which variation the user
session is served. This randomization ID is a combination of the entity
ID and <code>randomizationSalt</code>. If you omit
<code>randomizationSalt</code>, Evidently uses the launch name as the
<code>randomizationSalt</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_create_launch_:_scheduledSplitsConfig">scheduledSplitsConfig</code></td>
<td><p>An array of structures that define the traffic allocation
percentages among the feature variations during each step of the
launch.</p></td>
</tr>
<tr class="even">
<td><code id="cloudwatchevidently_create_launch_:_tags">tags</code></td>
<td><p>Assigns one or more tags (key-value pairs) to the launch.</p>
<p>Tags can help you organize and categorize your resources. You can
also use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.</p>
<p>Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.</p>
<p>You can associate as many as 50 tags with a launch.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html">Tagging
Amazon Web Services resources</a>.</p></td>
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

    svc$create_launch(
      description = "string",
      groups = list(
        list(
          description = "string",
          feature = "string",
          name = "string",
          variation = "string"
        )
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
      ),
      tags = list(
        "string"
      )
    )
