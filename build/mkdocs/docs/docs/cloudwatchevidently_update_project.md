<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_update_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the description of an existing project

### Description

Updates the description of an existing project.

To create a new project, use `create_project`.

Don't use this operation to update the data storage options of a
project. Instead, use `update_project_data_delivery`.

Don't use this operation to update the tags of a project. Instead, use
`tag_resource`.

### Usage

    cloudwatchevidently_update_project(appConfigResource, description,
      project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_project_:_appConfigResource">appConfigResource</code></td>
<td><p>Use this parameter if the project will use client-side evaluation
powered by AppConfig. Client-side evaluation allows your application to
assign variations to user sessions locally instead of by calling the
<code>evaluate_feature</code> operation. This mitigates the latency and
availability risks that come with an API call. allows you to</p>
<p>This parameter is a structure that contains information about the
AppConfig application that will be used for client-side
evaluation.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_project_:_description">description</code></td>
<td><p>An optional description of the project.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_project_:_project">project</code></td>
<td><p>[required] The name or ARN of the project to update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      project = list(
        activeExperimentCount = 123,
        activeLaunchCount = 123,
        appConfigResource = list(
          applicationId = "string",
          configurationProfileId = "string",
          environmentId = "string"
        ),
        arn = "string",
        createdTime = as.POSIXct(
          "2015-01-01"
        ),
        dataDelivery = list(
          cloudWatchLogs = list(
            logGroup = "string"
          ),
          s3Destination = list(
            bucket = "string",
            prefix = "string"
          )
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

### Request syntax

    svc$update_project(
      appConfigResource = list(
        applicationId = "string",
        environmentId = "string"
      ),
      description = "string",
      project = "string"
    )
