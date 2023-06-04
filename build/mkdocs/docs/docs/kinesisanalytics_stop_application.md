<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalytics_stop_application</td>
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

Stops the application from processing input data. You can stop an
application only if it is in the running state. You can use the
`describe_application` operation to find the application state. After
the application is stopped, Amazon Kinesis Analytics stops reading data
from the input, the application stops processing data, and there is no
output written to the destination.

This operation requires permissions to perform the
`kinesisanalytics:StopApplication` action.

### Usage

    kinesisanalytics_stop_application(ApplicationName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalytics_stop_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] Name of the running application to stop.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$stop_application(
      ApplicationName = "string"
    )
