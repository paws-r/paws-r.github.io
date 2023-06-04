<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_delete_application_input_processing_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an InputProcessingConfiguration from an input

### Description

Deletes an InputProcessingConfiguration from an input.

### Usage

    kinesisanalyticsv2_delete_application_input_processing_configuration(
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
id="kinesisanalyticsv2_delete_application_input_processing_configuration_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_delete_application_input_processing_configuration_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] The application version. You can use the
<code>describe_application</code> operation to get the current
application version. If the version specified is not the current
version, the <code>ConcurrentModificationException</code> is
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_delete_application_input_processing_configuration_:_InputId">InputId</code></td>
<td><p>[required] The ID of the input configuration from which to delete
the input processing configuration. You can get a list of the input IDs
for an application by using the <code>describe_application</code>
operation.</p></td>
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

    svc$delete_application_input_processing_configuration(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      InputId = "string"
    )
