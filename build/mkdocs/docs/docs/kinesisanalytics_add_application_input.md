<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_add_application_input</td>
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

Adds a streaming source to your Amazon Kinesis application. For
conceptual information, see [Configuring Application
Input](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).

You can add a streaming source either when you create an application or
you can use this operation to add a streaming source after you create an
application. For more information, see `create_application`.

Any configuration update, including adding a streaming source using this
operation, results in a new version of the application. You can use the
`describe_application` operation to find the current application
version.

This operation requires permissions to perform the
`kinesisanalytics:AddApplicationInput` action.

### Usage

    kinesisanalytics_add_application_input(ApplicationName,
      CurrentApplicationVersionId, Input)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_add_application_input_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] Name of your existing Amazon Kinesis Analytics
application to which you want to add the streaming source.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_add_application_input_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] Current version of your Amazon Kinesis Analytics
application. You can use the <code>describe_application</code> operation
to find the current application version.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_add_application_input_:_Input">Input</code></td>
<td><p>[required] The <a
href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_Input.html">Input</a>
to add.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_application_input(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      Input = list(
        NamePrefix = "string",
        InputProcessingConfiguration = list(
          InputLambdaProcessor = list(
            ResourceARN = "string",
            RoleARN = "string"
          )
        ),
        KinesisStreamsInput = list(
          ResourceARN = "string",
          RoleARN = "string"
        ),
        KinesisFirehoseInput = list(
          ResourceARN = "string",
          RoleARN = "string"
        ),
        InputParallelism = list(
          Count = 123
        ),
        InputSchema = list(
          RecordFormat = list(
            RecordFormatType = "JSON"|"CSV",
            MappingParameters = list(
              JSONMappingParameters = list(
                RecordRowPath = "string"
              ),
              CSVMappingParameters = list(
                RecordRowDelimiter = "string",
                RecordColumnDelimiter = "string"
              )
            )
          ),
          RecordEncoding = "string",
          RecordColumns = list(
            list(
              Name = "string",
              Mapping = "string",
              SqlType = "string"
            )
          )
        )
      )
    )
