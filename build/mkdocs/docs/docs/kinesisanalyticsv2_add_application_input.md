<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_add_application_input</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a streaming source to your SQL-based Kinesis Data Analytics application

### Description

Adds a streaming source to your SQL-based Kinesis Data Analytics
application.

You can add a streaming source when you create an application, or you
can use this operation to add a streaming source after you create an
application. For more information, see `create_application`.

Any configuration update, including adding a streaming source using this
operation, results in a new version of the application. You can use the
`describe_application` operation to find the current application
version.

### Usage

    kinesisanalyticsv2_add_application_input(ApplicationName,
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
id="kinesisanalyticsv2_add_application_input_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of your existing application to which you
want to add the streaming source.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_add_application_input_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] The current version of your application. You must
provide the <code>ApplicationVersionID</code> or the
<code>ConditionalToken</code>.You can use the
<code>describe_application</code> operation to find the current
application version.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_add_application_input_:_Input">Input</code></td>
<td><p>[required] The Input to add.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationARN = "string",
      ApplicationVersionId = 123,
      InputDescriptions = list(
        list(
          InputId = "string",
          NamePrefix = "string",
          InAppStreamNames = list(
            "string"
          ),
          InputProcessingConfigurationDescription = list(
            InputLambdaProcessorDescription = list(
              ResourceARN = "string",
              RoleARN = "string"
            )
          ),
          KinesisStreamsInputDescription = list(
            ResourceARN = "string",
            RoleARN = "string"
          ),
          KinesisFirehoseInputDescription = list(
            ResourceARN = "string",
            RoleARN = "string"
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
          ),
          InputParallelism = list(
            Count = 123
          ),
          InputStartingPositionConfiguration = list(
            InputStartingPosition = "NOW"|"TRIM_HORIZON"|"LAST_STOPPED_POINT"
          )
        )
      )
    )

### Request syntax

    svc$add_application_input(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      Input = list(
        NamePrefix = "string",
        InputProcessingConfiguration = list(
          InputLambdaProcessor = list(
            ResourceARN = "string"
          )
        ),
        KinesisStreamsInput = list(
          ResourceARN = "string"
        ),
        KinesisFirehoseInput = list(
          ResourceARN = "string"
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
