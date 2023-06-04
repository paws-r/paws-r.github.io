<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>apprunner_delete_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Delete an App Runner connection

### Description

Delete an App Runner connection. You must first ensure that there are no
running App Runner services that use this connection. If there are any,
the `delete_connection` action fails.

### Usage

    apprunner_delete_connection(ConnectionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="apprunner_delete_connection_:_ConnectionArn">ConnectionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the App Runner
connection that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Connection = list(
        ConnectionName = "string",
        ConnectionArn = "string",
        ProviderType = "GITHUB",
        Status = "PENDING_HANDSHAKE"|"AVAILABLE"|"ERROR"|"DELETED",
        CreatedAt = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$delete_connection(
      ConnectionArn = "string"
    )
