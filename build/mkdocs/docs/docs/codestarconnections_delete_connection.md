<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarconnections_delete_connection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The connection to be deleted

### Description

The connection to be deleted.

### Usage

    codestarconnections_delete_connection(ConnectionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarconnections_delete_connection_:_ConnectionArn">ConnectionArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the connection to be
deleted.</p>
<p>The ARN is never reused if the connection is deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_connection(
      ConnectionArn = "string"
    )
