<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_delete_application_output</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the output destination configuration from your SQL-based Kinesis Data Analytics application's configuration

### Description

Deletes the output destination configuration from your SQL-based Kinesis
Data Analytics application's configuration. Kinesis Data Analytics will
no longer write data from the corresponding in-application stream to the
external output destination.

### Usage

    kinesisanalyticsv2_delete_application_output(ApplicationName,
      CurrentApplicationVersionId, OutputId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_delete_application_output_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The application name.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_delete_application_output_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] The application version. You can use the
<code>describe_application</code> operation to get the current
application version. If the version specified is not the current
version, the <code>ConcurrentModificationException</code> is
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_delete_application_output_:_OutputId">OutputId</code></td>
<td><p>[required] The ID of the configuration to delete. Each output
configuration that is added to the application (either when the
application is created or later) using the
<code>add_application_output</code> operation has a unique ID. You need
to provide the ID to uniquely identify the output configuration that you
want to delete from the application configuration. You can use the
<code>describe_application</code> operation to get the specific
<code>OutputId</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationARN = "string",
      ApplicationVersionId = 123
    )

### Request syntax

    svc$delete_application_output(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      OutputId = "string"
    )
