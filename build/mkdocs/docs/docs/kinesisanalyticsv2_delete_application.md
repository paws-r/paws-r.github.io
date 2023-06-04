<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_delete_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified application

### Description

Deletes the specified application. Kinesis Data Analytics halts
application execution and deletes the application.

### Usage

    kinesisanalyticsv2_delete_application(ApplicationName, CreateTimestamp)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_delete_application_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_delete_application_:_CreateTimestamp">CreateTimestamp</code></td>
<td><p>[required] Use the <code>describe_application</code> operation to
get this value.</p></td>
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
