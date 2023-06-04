<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eventbridge_deauthorize_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes all authorization parameters from the connection

### Description

Removes all authorization parameters from the connection. This lets you
remove the secret from the connection so you can reuse it without having
to create a new connection.

### Usage

    eventbridge_deauthorize_connection(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eventbridge_deauthorize_connection_:_Name">Name</code></td>
<td><p>[required] The name of the connection to remove authorization
from.</p></td>
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

    svc$deauthorize_connection(
      Name = "string"
    )
