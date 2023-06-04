<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_update_application</td>
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

Updates an existing Amazon Kinesis Analytics application. Using this
API, you can update application code, input configuration, and output
configuration.

Note that Amazon Kinesis Analytics updates the
`CurrentApplicationVersionId` each time you update your application.

This operation requires permission for the
`kinesisanalytics:UpdateApplication` action.

### Usage

    kinesisanalytics_update_application(ApplicationName,
      CurrentApplicationVersionId, ApplicationUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_update_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] Name of the Amazon Kinesis Analytics application to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_update_application_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] The current application version ID. You can use the
<code>describe_application</code> operation to get this value.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_update_application_:_ApplicationUpdate">ApplicationUpdate</code></td>
<td><p>[required] Describes application updates.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_application(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      ApplicationUpdate = list(
        InputUpdates = list(
          list(
            InputId = "string",
            NamePrefixUpdate = "string",
            InputProcessingConfigurationUpdate = list(
              InputLambdaProcessorUpdate = list(
                ResourceARNUpdate = "string",
                RoleARNUpdate = "string"
              )
            ),
            KinesisStreamsInputUpdate = list(
              ResourceARNUpdate = "string",
              RoleARNUpdate = "string"
            ),
            KinesisFirehoseInputUpdate = list(
              ResourceARNUpdate = "string",
              RoleARNUpdate = "string"
            ),
            InputSchemaUpdate = list(
              RecordFormatUpdate = list(
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
              RecordEncodingUpdate = "string",
              RecordColumnUpdates = list(
                list(
                  Name = "string",
                  Mapping = "string",
                  SqlType = "string"
                )
              )
            ),
            InputParallelismUpdate = list(
              CountUpdate = 123
            )
          )
        ),
        ApplicationCodeUpdate = "string",
        OutputUpdates = list(
          list(
            OutputId = "string",
            NameUpdate = "string",
            KinesisStreamsOutputUpdate = list(
              ResourceARNUpdate = "string",
              RoleARNUpdate = "string"
            ),
            KinesisFirehoseOutputUpdate = list(
              ResourceARNUpdate = "string",
              RoleARNUpdate = "string"
            ),
            LambdaOutputUpdate = list(
              ResourceARNUpdate = "string",
              RoleARNUpdate = "string"
            ),
            DestinationSchemaUpdate = list(
              RecordFormatType = "JSON"|"CSV"
            )
          )
        ),
        ReferenceDataSourceUpdates = list(
          list(
            ReferenceId = "string",
            TableNameUpdate = "string",
            S3ReferenceDataSourceUpdate = list(
              BucketARNUpdate = "string",
              FileKeyUpdate = "string",
              ReferenceRoleARNUpdate = "string"
            ),
            ReferenceSchemaUpdate = list(
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
        ),
        CloudWatchLoggingOptionUpdates = list(
          list(
            CloudWatchLoggingOptionId = "string",
            LogStreamARNUpdate = "string",
            RoleARNUpdate = "string"
          )
        )
      )
    )
