<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_get_project</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the details about one launch

### Description

Returns the details about one launch. You must already know the project
name. To retrieve a list of projects in your account, use
`list_projects`.

### Usage

    cloudwatchevidently_get_project(project)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_get_project_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that you want to see
the details of.</p></td>
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

    svc$get_project(
      project = "string"
    )
