<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_start_application</td>
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

Starts the specified Amazon Kinesis Analytics application. After
creating an application, you must exclusively call this operation to
start your application.

After the application starts, it begins consuming the input data,
processes it, and writes the output to the configured destination.

The application status must be `READY` for you to start an application.
You can get the application status in the console or using the
`describe_application` operation.

After you start the application, you can stop the application from
processing the input by calling the `stop_application` operation.

This operation requires permissions to perform the
`kinesisanalytics:StartApplication` action.

### Usage

    kinesisanalytics_start_application(ApplicationName, InputConfigurations)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_start_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] Name of the application.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalytics_start_application_:_InputConfigurations">InputConfigurations</code></td>
<td><p>[required] Identifies the specific input, by ID, that the
application starts consuming. Amazon Kinesis Analytics starts reading
the streaming source associated with the input. You can also specify
where in the streaming source you want Amazon Kinesis Analytics to start
reading.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$start_application(
      ApplicationName = "string",
      InputConfigurations = list(
        list(
          Id = "string",
          InputStartingPositionConfiguration = list(
            InputStartingPosition = "NOW"|"TRIM_HORIZON"|"LAST_STOPPED_POINT"
          )
        )
      )
    )
