<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_add_application_cloud_watch_logging_option</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an Amazon CloudWatch log stream to monitor application configuration errors

### Description

Adds an Amazon CloudWatch log stream to monitor application
configuration errors.

### Usage

    kinesisanalyticsv2_add_application_cloud_watch_logging_option(
      ApplicationName, CurrentApplicationVersionId, CloudWatchLoggingOption,
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
id="kinesisanalyticsv2_add_application_cloud_watch_logging_option_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The Kinesis Data Analytics application name.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_add_application_cloud_watch_logging_option_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>The version ID of the Kinesis Data Analytics application. You
must provide the <code>CurrentApplicationVersionId</code> or the
<code>ConditionalToken</code>.You can retrieve the application version
ID using <code>describe_application</code>. For better concurrency
support, use the <code>ConditionalToken</code> parameter instead of
<code>CurrentApplicationVersionId</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_add_application_cloud_watch_logging_option_:_CloudWatchLoggingOption">CloudWatchLoggingOption</code></td>
<td><p>[required] Provides the Amazon CloudWatch log stream Amazon
Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_add_application_cloud_watch_logging_option_:_ConditionalToken">ConditionalToken</code></td>
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

    svc$add_application_cloud_watch_logging_option(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      CloudWatchLoggingOption = list(
        LogStreamARN = "string"
      ),
      ConditionalToken = "string"
    )
