<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_delete_application_input_processing_configuration</td>
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

Deletes an
[InputProcessingConfiguration](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html)
from an input.

### Usage

    kinesisanalytics_delete_application_input_processing_configuration(
      ApplicationName, CurrentApplicationVersionId, InputId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_delete_application_input_processing_configuration_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The Kinesis Analytics application name.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_delete_application_input_processing_configuration_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] The version ID of the Kinesis Analytics
application.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_delete_application_input_processing_configuration_:_InputId">InputId</code></td>
<td><p>[required] The ID of the input configuration from which to delete
the input processing configuration. You can get a list of the input IDs
for an application by using the <code>describe_application</code>
operation.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_application_input_processing_configuration(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      InputId = "string"
    )
