<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarconnections_delete_host</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The host to be deleted

### Description

The host to be deleted. Before you delete a host, all connections
associated to the host must be deleted.

A host cannot be deleted if it is in the VPC\_CONFIG\_INITIALIZING or
VPC\_CONFIG\_DELETING state.

### Usage

    codestarconnections_delete_host(HostArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarconnections_delete_host_:_HostArn">HostArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the host to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_host(
      HostArn = "string"
    )
