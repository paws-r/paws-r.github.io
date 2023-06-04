<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_add_application_output</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an external destination to your SQL-based Kinesis Data Analytics application

### Description

Adds an external destination to your SQL-based Kinesis Data Analytics
application.

If you want Kinesis Data Analytics to deliver data from an
in-application stream within your application to an external destination
(such as an Kinesis data stream, a Kinesis Data Firehose delivery
stream, or an Amazon Lambda function), you add the relevant
configuration to your application using this operation. You can
configure one or more outputs for your application. Each output
configuration maps an in-application stream and an external destination.

You can use one of the output configurations to deliver data from your
in-application error stream to an external destination so that you can
analyze the errors.

Any configuration update, including adding a streaming source using this
operation, results in a new version of the application. You can use the
`describe_application` operation to find the current application
version.

### Usage

    kinesisanalyticsv2_add_application_output(ApplicationName,
      CurrentApplicationVersionId, Output)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_add_application_output_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application to which you want to add
the output configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_add_application_output_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] The version of the application to which you want to
add the output configuration. You can use the
<code>describe_application</code> operation to get the current
application version. If the version specified is not the current
version, the <code>ConcurrentModificationException</code> is
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_add_application_output_:_Output">Output</code></td>
<td><p>[required] An array of objects, each describing one output
configuration. In the output configuration, you specify the name of an
in-application stream, a destination (that is, a Kinesis data stream, a
Kinesis Data Firehose delivery stream, or an Amazon Lambda function),
and record the formation to use when writing to the
destination.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationARN = "string",
      ApplicationVersionId = 123,
      OutputDescriptions = list(
        list(
          OutputId = "string",
          Name = "string",
          KinesisStreamsOutputDescription = list(
            ResourceARN = "string",
            RoleARN = "string"
          ),
          KinesisFirehoseOutputDescription = list(
            ResourceARN = "string",
            RoleARN = "string"
          ),
          LambdaOutputDescription = list(
            ResourceARN = "string",
            RoleARN = "string"
          ),
          DestinationSchema = list(
            RecordFormatType = "JSON"|"CSV"
          )
        )
      )
    )

### Request syntax

    svc$add_application_output(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      Output = list(
        Name = "string",
        KinesisStreamsOutput = list(
          ResourceARN = "string"
        ),
        KinesisFirehoseOutput = list(
          ResourceARN = "string"
        ),
        LambdaOutput = list(
          ResourceARN = "string"
        ),
        DestinationSchema = list(
          RecordFormatType = "JSON"|"CSV"
        )
      )
    )
