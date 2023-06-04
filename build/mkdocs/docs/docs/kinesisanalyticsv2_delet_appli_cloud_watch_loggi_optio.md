<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_delete_application_cloud_watch_logging_option</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon CloudWatch log stream from an Kinesis Data Analytics application

### Description

Deletes an Amazon CloudWatch log stream from an Kinesis Data Analytics
application.

### Usage

    kinesisanalyticsv2_delete_application_cloud_watch_logging_option(
      ApplicationName, CurrentApplicationVersionId, CloudWatchLoggingOptionId,
      ConditionalToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_delete_application_cloud_watch_logging_option_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The application name.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_delete_application_cloud_watch_logging_option_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>The version ID of the application. You must provide the
<code>CurrentApplicationVersionId</code> or the
<code>ConditionalToken</code>. You can retrieve the application version
ID using <code>describe_application</code>. For better concurrency
support, use the <code>ConditionalToken</code> parameter instead of
<code>CurrentApplicationVersionId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_delete_application_cloud_watch_logging_option_:_CloudWatchLoggingOptionId">CloudWatchLoggingOptionId</code></td>
<td><p>[required] The <code>CloudWatchLoggingOptionId</code> of the
Amazon CloudWatch logging option to delete. You can get the
<code>CloudWatchLoggingOptionId</code> by using the
<code>describe_application</code> operation.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_delete_application_cloud_watch_logging_option_:_ConditionalToken">ConditionalToken</code></td>
<td><p>A value you use to implement strong concurrency for application
updates. You must provide the <code>CurrentApplicationVersionId</code>
or the <code>ConditionalToken</code>. You get the application's current
<code>ConditionalToken</code> using <code>describe_application</code>.
For better concurrency support, use the <code>ConditionalToken</code>
parameter instead of <code>CurrentApplicationVersionId</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationARN = "string",
      ApplicationVersionId = 123,
      CloudWatchLoggingOptionDescriptions = list(
        list(
          CloudWatchLoggingOptionId = "string",
          LogStreamARN = "string",
          RoleARN = "string"
        )
      )
    )

### Request syntax

    svc$delete_application_cloud_watch_logging_option(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      CloudWatchLoggingOptionId = "string",
      ConditionalToken = "string"
    )
