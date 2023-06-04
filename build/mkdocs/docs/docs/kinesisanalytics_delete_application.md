<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_delete_application</td>
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

Deletes the specified application. Amazon Kinesis Analytics halts
application execution and deletes the application, including any
application artifacts (such as in-application streams, reference table,
and application code).

This operation requires permissions to perform the
`kinesisanalytics:DeleteApplication` action.

### Usage

    kinesisanalytics_delete_application(ApplicationName, CreateTimestamp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_delete_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] Name of the Amazon Kinesis Analytics application to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_delete_application_:_CreateTimestamp">CreateTimestamp</code></td>
<td><p>[required] You can use the <code>describe_application</code>
operation to get this value.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_application(
      ApplicationName = "string",
      CreateTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )
