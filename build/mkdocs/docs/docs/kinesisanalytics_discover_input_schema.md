<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_discover_input_schema</td>
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

Infers a schema by evaluating sample records on the specified streaming
source (Amazon Kinesis stream or Amazon Kinesis Firehose delivery
stream) or S3 object. In the response, the operation returns the
inferred schema and also the sample records that the operation used to
infer the schema.

You can use the inferred schema when configuring a streaming source for
your application. For conceptual information, see [Configuring
Application
Input](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).
Note that when you create an application using the Amazon Kinesis
Analytics console, the console uses this operation to infer a schema and
show it in the console user interface.

This operation requires permissions to perform the
`kinesisanalytics:DiscoverInputSchema` action.

### Usage

    kinesisanalytics_discover_input_schema(ResourceARN, RoleARN,
      InputStartingPositionConfiguration, S3Configuration,
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
id="kinesisanalytics_discover_input_schema_:_ResourceARN">ResourceARN</code></td>
<td><p>Amazon Resource Name (ARN) of the streaming source.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_discover_input_schema_:_RoleARN">RoleARN</code></td>
<td><p>ARN of the IAM role that Amazon Kinesis Analytics can assume to
access the stream on your behalf.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_discover_input_schema_:_InputStartingPositionConfiguration">InputStartingPositionConfiguration</code></td>
<td><p>Point at which you want Amazon Kinesis Analytics to start reading
records from the specified streaming source discovery purposes.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_discover_input_schema_:_S3Configuration">S3Configuration</code></td>
<td><p>Specify this parameter to discover a schema from data in an
Amazon S3 object.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_discover_input_schema_:_InputProcessingConfiguration">InputProcessingConfiguration</code></td>
<td><p>The <a
href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_InputProcessingConfiguration.html">InputProcessingConfiguration</a>
to use to preprocess the records before discovering the schema of the
records.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
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
      ParsedInputRecords = list(
        list(
          "string"
        )
      ),
      ProcessedInputRecords = list(
        "string"
      ),
      RawInputRecords = list(
        "string"
      )
    )

### Request syntax

    svc$discover_input_schema(
      ResourceARN = "string",
      RoleARN = "string",
      InputStartingPositionConfiguration = list(
        InputStartingPosition = "NOW"|"TRIM_HORIZON"|"LAST_STOPPED_POINT"
      ),
      S3Configuration = list(
        RoleARN = "string",
        BucketARN = "string",
        FileKey = "string"
      ),
      InputProcessingConfiguration = list(
        InputLambdaProcessor = list(
          ResourceARN = "string",
          RoleARN = "string"
        )
      )
    )
