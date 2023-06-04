<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworkscm_delete_server</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the server and the underlying AWS CloudFormation stacks (including the server's EC2 instance)

### Description

Deletes the server and the underlying AWS CloudFormation stacks
(including the server's EC2 instance). When you run this command, the
server state is updated to `DELETING`. After the server is deleted, it
is no longer returned by `DescribeServer` requests. If the AWS
CloudFormation stack cannot be deleted, the server cannot be deleted.

This operation is asynchronous.

An `InvalidStateException` is thrown when a server deletion is already
in progress. A `ResourceNotFoundException` is thrown when the server
does not exist. A `ValidationException` is raised when parameters of the
request are not valid.

### Usage

    opsworkscm_delete_server(ServerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworkscm_delete_server_:_ServerName">ServerName</code></td>
<td><p>[required] The ID of the server to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_server(
      ServerName = "string"
    )
