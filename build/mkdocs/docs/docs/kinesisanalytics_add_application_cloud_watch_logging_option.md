<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_add_application_cloud_watch_logging_option</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This documentation is for version 1 of the Amazon Kinesis Data Analytics API, which only supports SQL applications

### Description

This documentation is for version 1 of the Amazon Kinesis Data Analytics
API, which only supports SQL applications. Version 2 of the API supports
SQL and Java applications. For more information about version 2, see
Amazon Kinesis Data Analytics API V2 Documentation.

Adds a CloudWatch log stream to monitor application configuration
errors. For more information about using CloudWatch log streams with
Amazon Kinesis Analytics applications, see [Working with Amazon
CloudWatch
Logs](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html).

### Usage

    kinesisanalytics_add_application_cloud_watch_logging_option(
      ApplicationName, CurrentApplicationVersionId, CloudWatchLoggingOption)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_add_application_cloud_watch_logging_option_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The Kinesis Analytics application name.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_add_application_cloud_watch_logging_option_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] The version ID of the Kinesis Analytics
application.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_add_application_cloud_watch_logging_option_:_CloudWatchLoggingOption">CloudWatchLoggingOption</code></td>
<td><p>[required] Provides the CloudWatch log stream Amazon Resource
Name (ARN) and the IAM role ARN. Note: To write application messages to
CloudWatch, the IAM role that is used must have the
<code>PutLogEvents</code> policy action enabled.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_application_cloud_watch_logging_option(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      CloudWatchLoggingOption = list(
        LogStreamARN = "string",
        RoleARN = "string"
      )
    )
