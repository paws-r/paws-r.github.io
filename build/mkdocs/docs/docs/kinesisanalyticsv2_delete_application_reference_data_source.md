<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_delete_application_reference_data_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a reference data source configuration from the specified SQL-based Kinesis Data Analytics application's configuration

### Description

Deletes a reference data source configuration from the specified
SQL-based Kinesis Data Analytics application's configuration.

If the application is running, Kinesis Data Analytics immediately
removes the in-application table that you created using the
`add_application_reference_data_source` operation.

### Usage

    kinesisanalyticsv2_delete_application_reference_data_source(
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
id="kinesisanalyticsv2_delete_application_reference_data_source_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of an existing application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_delete_application_reference_data_source_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] The current application version. You can use the
<code>describe_application</code> operation to get the current
application version. If the version specified is not the current
version, the <code>ConcurrentModificationException</code> is
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_delete_application_reference_data_source_:_ReferenceId">ReferenceId</code></td>
<td><p>[required] The ID of the reference data source. When you add a
reference data source to your application using the
<code>add_application_reference_data_source</code>, Kinesis Data
Analytics assigns an ID. You can use the
<code>describe_application</code> operation to get the reference
ID.</p></td>
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

    svc$delete_application_reference_data_source(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      ReferenceId = "string"
    )
