<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_add_application_reference_data_source</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a reference data source to an existing SQL-based Kinesis Data Analytics application

### Description

Adds a reference data source to an existing SQL-based Kinesis Data
Analytics application.

Kinesis Data Analytics reads reference data (that is, an Amazon S3
object) and creates an in-application table within your application. In
the request, you provide the source (S3 bucket name and object key
name), name of the in-application table to create, and the necessary
mapping information that describes how data in an Amazon S3 object maps
to columns in the resulting in-application table.

### Usage

    kinesisanalyticsv2_add_application_reference_data_source(
      ApplicationName, CurrentApplicationVersionId, ReferenceDataSource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_add_application_reference_data_source_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of an existing application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_add_application_reference_data_source_:_CurrentApplicationVersionId">CurrentApplicationVersionId</code></td>
<td><p>[required] The version of the application for which you are
adding the reference data source. You can use the
<code>describe_application</code> operation to get the current
application version. If the version specified is not the current
version, the <code>ConcurrentModificationException</code> is
returned.</p></td>
</tr>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_add_application_reference_data_source_:_ReferenceDataSource">ReferenceDataSource</code></td>
<td><p>[required] The reference data source can be an object in your
Amazon S3 bucket. Kinesis Data Analytics reads the object and copies the
data into the in-application table that is created. You provide an S3
bucket, object key name, and the resulting in-application table that is
created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationARN = "string",
      ApplicationVersionId = 123,
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
      )
    )

### Request syntax

    svc$add_application_reference_data_source(
      ApplicationName = "string",
      CurrentApplicationVersionId = 123,
      ReferenceDataSource = list(
        TableName = "string",
        S3ReferenceDataSource = list(
          BucketARN = "string",
          FileKey = "string"
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
