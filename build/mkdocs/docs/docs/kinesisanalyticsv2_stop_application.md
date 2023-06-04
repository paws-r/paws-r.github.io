<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_stop_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops the application from processing data

### Description

Stops the application from processing data. You can stop an application
only if it is in the running status, unless you set the `Force`
parameter to `true`.

You can use the `describe_application` operation to find the application
status.

Kinesis Data Analytics takes a snapshot when the application is stopped,
unless `Force` is set to `true`.

### Usage

    kinesisanalyticsv2_stop_application(ApplicationName, Force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_stop_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the running application to stop.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_stop_application_:_Force">Force</code></td>
<td><p>Set to <code>true</code> to force the application to stop. If you
set <code>Force</code> to <code>true</code>, Kinesis Data Analytics
stops the application without taking a snapshot.</p>
<p>Force-stopping your application may lead to data loss or duplication.
To prevent data loss or duplicate processing of data during application
restarts, we recommend you to take frequent snapshots of your
application.</p>
<p>You can only force stop a Flink-based Kinesis Data Analytics
application. You can't force stop a SQL-based Kinesis Data Analytics
application.</p>
<p>The application must be in the <code>STARTING</code>,
<code>UPDATING</code>, <code>STOPPING</code>, <code>AUTOSCALING</code>,
or <code>RUNNING</code> status.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_application(
      ApplicationName = "string",
      Force = TRUE|FALSE
    )
