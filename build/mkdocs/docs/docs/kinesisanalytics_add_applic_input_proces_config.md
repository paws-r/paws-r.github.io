<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_add_application_input_processing_configuration</td>
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

Adds an
[InputProcessingConfiguration](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html)
to an application. An input processor preprocesses records on the input
stream before the application's SQL code executes. Currently, the only
input processor available is [AWS
Lambda](https://docs.aws.amazon.com/lambda/).

### Usage

    kinesisanalytics_add_application_input_processing_configuration(
      ApplicationName, CurrentApplicationVersionId, InputId,
      InputProcessingConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_add_application_input_processing_configuration_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] Name of the application to which you want to add the
input processing configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_add_application_input_processing_configuration_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] Version of the application to which you want to add
the input processing configuration. You can use the
<code>describe_application</code> operation to get the current
application version. If the version specified is not the current
version, the <code>ConcurrentModificationException</code> is
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_add_application_input_processing_configuration_:_InputId">InputId</code></td>
<td><p>[required] The ID of the input configuration to add the input
processing configuration to. You can get a list of the input IDs for an
application using the <code>describe_application</code>
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_add_application_input_processing_configuration_:_InputProcessingConfiguration">InputProcessingConfiguration</code></td>
<td><p>[required] The <a
href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a>
to add to the application.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_application_input_processing_configuration(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      InputId = "string",
      InputProcessingConfiguration = list(
        InputLambdaProcessor = list(
          ResourceARN = "string",
          RoleARN = "string"
        )
      )
    )
