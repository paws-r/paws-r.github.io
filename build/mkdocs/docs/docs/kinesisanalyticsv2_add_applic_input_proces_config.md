<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_add_application_input_processing_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an InputProcessingConfiguration to a SQL-based Kinesis Data Analytics application

### Description

Adds an InputProcessingConfiguration to a SQL-based Kinesis Data
Analytics application. An input processor pre-processes records on the
input stream before the application's SQL code executes. Currently, the
only input processor available is [Amazon
Lambda](https://docs.aws.amazon.com/lambda/).

### Usage

    kinesisanalyticsv2_add_application_input_processing_configuration(
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
id="kinesisanalyticsv2_add_application_input_processing_configuration_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application to which you want to add
the input processing configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_add_application_input_processing_configuration_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] The version of the application to which you want to
add the input processing configuration. You can use the
<code>describe_application</code> operation to get the current
application version. If the version specified is not the current
version, the <code>ConcurrentModificationException</code> is
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_add_application_input_processing_configuration_:_InputId">InputId</code></td>
<td><p>[required] The ID of the input configuration to add the input
processing configuration to. You can get a list of the input IDs for an
application using the <code>describe_application</code>
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_add_application_input_processing_configuration_:_InputProcessingConfiguration">InputProcessingConfiguration</code></td>
<td><p>[required] The InputProcessingConfiguration to add to the
application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationARN = "string",
      ApplicationVersionId = 123,
      InputId = "string",
      InputProcessingConfigurationDescription = list(
        InputLambdaProcessorDescription = list(
          ResourceARN = "string",
          RoleARN = "string"
        )
      )
    )

### Request syntax

    svc$add_application_input_processing_configuration(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      InputId = "string",
      InputProcessingConfiguration = list(
        InputLambdaProcessor = list(
          ResourceARN = "string"
        )
      )
    )
