<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevents_delete_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a connection

### Description

Deletes a connection.

### Usage

    cloudwatchevents_delete_connection(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevents_delete_connection_:_Name">Name</code></td>
<td><p>[required] The name of the connection to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectionArn = "string",
      ConnectionState = "CREATING"|"UPDATING"|"DELETING"|"AUTHORIZED"|"DEAUTHORIZED"|"AUTHORIZING"|"DEAUTHORIZING",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      LastAuthorizedTime = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$delete_connection(
      Name = "string"
    )
