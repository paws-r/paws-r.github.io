<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_update_project_data_delivery</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the data storage options for this project

### Description

Updates the data storage options for this project. If you store
evaluation events, you an keep them and analyze them on your own. If you
choose not to store evaluation events, Evidently deletes them after
using them to produce metrics and other experiment results that you can
view.

You can't specify both `cloudWatchLogs` and `s3Destination` in the same
operation.

### Usage

    cloudwatchevidently_update_project_data_delivery(cloudWatchLogs,
      project, s3Destination)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_project_data_delivery_:_cloudWatchLogs">cloudWatchLogs</code></td>
<td><p>A structure containing the CloudWatch Logs log group where you
want to store evaluation events.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_update_project_data_delivery_:_project">project</code></td>
<td><p>[required] The name or ARN of the project that you want to modify
the data storage options for.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudwatchevidently_update_project_data_delivery_:_s3Destination">s3Destination</code></td>
<td><p>A structure containing the S3 bucket name and bucket prefix where
you want to store evaluation events.</p></td>
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

    svc$update_project_data_delivery(
      cloudWatchLogs = list(
        logGroup = "string"
      ),
      project = "string",
      s3Destination = list(
        bucket = "string",
        prefix = "string"
      )
    )
