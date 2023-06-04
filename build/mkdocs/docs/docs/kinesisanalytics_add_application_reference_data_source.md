<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_add_application_reference_data_source</td>
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

Adds a reference data source to an existing application.

Amazon Kinesis Analytics reads reference data (that is, an Amazon S3
object) and creates an in-application table within your application. In
the request, you provide the source (S3 bucket name and object key
name), name of the in-application table to create, and the necessary
mapping information that describes how data in Amazon S3 object maps to
columns in the resulting in-application table.

For conceptual information, see [Configuring Application
Input](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-input.html).
For the limits on data sources you can add to your application, see
[Limits](https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html).

This operation requires permissions to perform the
`kinesisanalytics:AddApplicationOutput` action.

### Usage

    kinesisanalytics_add_application_reference_data_source(ApplicationName,
      CurrentApplicationVersionId, ReferenceDataSource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_add_application_reference_data_source_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] Name of an existing application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_add_application_reference_data_source_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] Version of the application for which you are adding
the reference data source. You can use the
<code>describe_application</code> operation to get the current
application version. If the version specified is not the current
version, the <code>ConcurrentModificationException</code> is
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalytics_add_application_reference_data_source_:_ReferenceDataSource">ReferenceDataSource</code></td>
<td><p>[required] The reference data source can be an object in your
Amazon S3 bucket. Amazon Kinesis Analytics reads the object and copies
the data into the in-application table that is created. You provide an
S3 bucket, object key name, and the resulting in-application table that
is created. You must also provide an IAM role with the necessary
permissions that Amazon Kinesis Analytics can assume to read the object
from your S3 bucket on your behalf.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$add_application_reference_data_source(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      ReferenceDataSource = list(
        TableName = "string",
        S3ReferenceDataSource = list(
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
    )
