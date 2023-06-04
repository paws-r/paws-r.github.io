<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_delete_application_reference_data_source</td>
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

Deletes a reference data source configuration from the specified
application configuration.

If the application is running, Amazon Kinesis Analytics immediately
removes the in-application table that you created using the
`add_application_reference_data_source` operation.

This operation requires permissions to perform the
`kinesisanalytics.DeleteApplicationReferenceDataSource` action.

### Usage

    kinesisanalytics_delete_application_reference_data_source(
      ApplicationName, CurrentApplicationVersionId, ReferenceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_delete_application_reference_data_source_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] Name of an existing application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_delete_application_reference_data_source_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] Version of the application. You can use the
<code>describe_application</code> operation to get the current
application version. If the version specified is not the current
version, the <code>ConcurrentModificationException</code> is
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_delete_application_reference_data_source_:_ReferenceId">ReferenceId</code></td>
<td><p>[required] ID of the reference data source. When you add a
reference data source to your application using the
<code>add_application_reference_data_source</code>, Amazon Kinesis
Analytics assigns an ID. You can use the
<code>describe_application</code> operation to get the reference
ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_application_reference_data_source(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      ReferenceId = "string"
    )
