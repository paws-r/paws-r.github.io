<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_delete_application_output</td>
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

Deletes output destination configuration from your application
configuration. Amazon Kinesis Analytics will no longer write data from
the corresponding in-application stream to the external output
destination.

This operation requires permissions to perform the
`kinesisanalytics:DeleteApplicationOutput` action.

### Usage

    kinesisanalytics_delete_application_output(ApplicationName,
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
id="kinesisanalytics_delete_application_output_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] Amazon Kinesis Analytics application name.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_delete_application_output_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] Amazon Kinesis Analytics application version. You can
use the <code>describe_application</code> operation to get the current
application version. If the version specified is not the current
version, the <code>ConcurrentModificationException</code> is
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_delete_application_output_:_OutputId">OutputId</code></td>
<td><p>[required] The ID of the configuration to delete. Each output
configuration that is added to the application, either when the
application is created or later using the
<code>add_application_output</code> operation, has a unique ID. You need
to provide the ID to uniquely identify the output configuration that you
want to delete from the application configuration. You can use the
<code>describe_application</code> operation to get the specific
<code>OutputId</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_application_output(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      OutputId = "string"
    )
