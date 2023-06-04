<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_create_application</td>
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

Creates an Amazon Kinesis Analytics application. You can configure each
application with one streaming source as input, application code to
process the input, and up to three destinations where you want Amazon
Kinesis Analytics to write the output data from your application. For an
overview, see [How it
Works](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works.html).

In the input configuration, you map the streaming source to an
in-application stream, which you can think of as a constantly updating
table. In the mapping, you must provide a schema for the in-application
stream and map each data column in the in-application stream to a data
element in the streaming source.

Your application code is one or more SQL statements that read input
data, transform it, and generate output. Your application code can
create one or more SQL artifacts like SQL streams or pumps.

In the output configuration, you can configure the application to write
data from in-application streams created in your applications to up to
three destinations.

To read data from your source stream or write data to destination
streams, Amazon Kinesis Analytics needs your permissions. You grant
these permissions by creating IAM roles. This operation requires
permissions to perform the `kinesisanalytics:CreateApplication` action.

For introductory exercises to create an Amazon Kinesis Analytics
application, see [Getting
Started](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/getting-started.html).

### Usage

    kinesisanalytics_create_application(ApplicationName,
      ApplicationDescription, Inputs, Outputs, CloudWatchLoggingOptions,
      ApplicationCode, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_create_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] Name of your Amazon Kinesis Analytics application (for
example, <code>sample-app</code>).</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_create_application_:_ApplicationDescription">ApplicationDescription</code></td>
<td><p>Summary description of the application.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_create_application_:_Inputs">Inputs</code></td>
<td><p>Use this parameter to configure the application input.</p>
<p>You can configure your application to receive input from a single
streaming source. In this configuration, you map this streaming source
to an in-application stream that is created. Your application code can
then query the in-application stream like a table (you can think of it
as a constantly updating table).</p>
<p>For the streaming source, you provide its Amazon Resource Name (ARN)
and format of data on the stream (for example, JSON, CSV, etc.). You
also must provide an IAM role that Amazon Kinesis Analytics can assume
to read this stream on your behalf.</p>
<p>To create the in-application stream, you need to specify a schema to
transform your data into a schematized version used in SQL. In the
schema, you provide the necessary mapping of the data elements in the
streaming source to record columns in the in-app stream.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_create_application_:_Outputs">Outputs</code></td>
<td><p>You can configure application output to write data from any of
the in-application streams to up to three destinations.</p>
<p>These destinations can be Amazon Kinesis streams, Amazon Kinesis
Firehose delivery streams, AWS Lambda destinations, or any combination
of the three.</p>
<p>In the configuration, you specify the in-application stream name, the
destination stream or Lambda function Amazon Resource Name (ARN), and
the format to use when writing data. You must also provide an IAM role
that Amazon Kinesis Analytics can assume to write to the destination
stream or Lambda function on your behalf.</p>
<p>In the output configuration, you also provide the output stream or
Lambda function ARN. For stream destinations, you provide the format of
data in the stream (for example, JSON, CSV). You also must provide an
IAM role that Amazon Kinesis Analytics can assume to write to the stream
or Lambda function on your behalf.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_create_application_:_CloudWatchLoggingOptions">CloudWatchLoggingOptions</code></td>
<td><p>Use this parameter to configure a CloudWatch log stream to
monitor application configuration errors. For more information, see <a
href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/cloudwatch-logs.html">Working
with Amazon CloudWatch Logs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_create_application_:_ApplicationCode">ApplicationCode</code></td>
<td><p>One or more SQL statements that read input data, transform it,
and generate output. For example, you can write a SQL statement that
reads data from one in-application stream, generates a running average
of the number of advertisement clicks by vendor, and insert resulting
rows in another in-application stream using pumps. For more information
about the typical pattern, see <a
href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-app-code.html">Application
Code</a>.</p>
<p>You can provide such series of SQL statements, where output of one
statement can be used as the input for the next statement. You store
intermediate results by creating in-application streams and pumps.</p>
<p>Note that the application code must create the streams with names
specified in the <code>Outputs</code>. For example, if your
<code>Outputs</code> defines output streams named
<code>ExampleOutputStream1</code> and <code>ExampleOutputStream2</code>,
then your application code must create these streams.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_create_application_:_Tags">Tags</code></td>
<td><p>A list of one or more tags to assign to the application. A tag is
a key-value pair that identifies an application. Note that the maximum
number of application tags includes system tags. The maximum number of
user-defined application tags is 50. For more information, see <a
href="https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-tagging.html">Using
Tagging</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationSummary = list(
        ApplicationName = "string",
        ApplicationARN = "string",
        ApplicationStatus = "DELETING"|"STARTING"|"STOPPING"|"READY"|"RUNNING"|"UPDATING"
      )
    )

### Request syntax

    svc$create_application(
      ApplicationName = "string",
      ApplicationDescription = "string",
      Inputs = list(
        list(
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
      ),
      Outputs = list(
        list(
          Name = "string",
          KinesisStreamsOutput = list(
            ResourceARN = "string",
            RoleARN = "string"
          ),
          KinesisFirehoseOutput = list(
            ResourceARN = "string",
            RoleARN = "string"
          ),
          LambdaOutput = list(
            ResourceARN = "string",
            RoleARN = "string"
          ),
          DestinationSchema = list(
            RecordFormatType = "JSON"|"CSV"
          )
        )
      ),
      CloudWatchLoggingOptions = list(
        list(
          LogStreamARN = "string",
          RoleARN = "string"
        )
      ),
      ApplicationCode = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
