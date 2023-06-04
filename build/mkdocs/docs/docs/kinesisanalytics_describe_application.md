<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_describe_application</td>
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

Returns information about a specific Amazon Kinesis Analytics
application.

If you want to retrieve a list of all applications in your account, use
the `list_applications` operation.

This operation requires permissions to perform the
`kinesisanalytics:DescribeApplication` action. You can use
`describe_application` to get the current application versionId, which
you need to call other operations such as `Update`.

### Usage

    kinesisanalytics_describe_application(ApplicationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_describe_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] Name of the application.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationDetail = list(
        ApplicationName = "string",
        ApplicationDescription = "string",
        ApplicationARN = "string",
        ApplicationStatus = "DELETING"|"STARTING"|"STOPPING"|"READY"|"RUNNING"|"UPDATING",
        CreateTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdateTimestamp = as.POSIXct(
          "2015-01-01"
        ),
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
        ),
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
        ),
        ReferenceDataSourceDescriptions = list(
          list(
            ReferenceId = "string",
            TableName = "string",
            S3ReferenceDataSourceDescription = list(
              BucketARN = "string",
              FileKey = "string",
              ReferenceRoleARN = "string"
            ),
            ReferenceSchema = list(
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
        CloudWatchLoggingOptionDescriptions = list(
          list(
            CloudWatchLoggingOptionId = "string",
            LogStreamARN = "string",
            RoleARN = "string"
          )
        ),
        ApplicationCode = "string",
        ApplicationVersionId = 123
      )
    )

### Request syntax

    svc$describe_application(
      ApplicationName = "string"
    )
