<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_delete_keyspace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The DeleteKeyspace operation deletes a keyspace and all of its tables

### Description

The `delete_keyspace` operation deletes a keyspace and all of its
tables.

### Usage

    keyspaces_delete_keyspace(keyspaceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="keyspaces_delete_keyspace_:_keyspaceName">keyspaceName</code></td>
<td><p>[required] The name of the keyspace to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_keyspace(
      keyspaceName = "string"
    )
