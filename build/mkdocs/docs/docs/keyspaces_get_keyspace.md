<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_get_keyspace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the name and the Amazon Resource Name (ARN) of the specified table

### Description

Returns the name and the Amazon Resource Name (ARN) of the specified
table.

### Usage

    keyspaces_get_keyspace(keyspaceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="keyspaces_get_keyspace_:_keyspaceName">keyspaceName</code></td>
<td><p>[required] The name of the keyspace.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      keyspaceName = "string",
      resourceArn = "string"
    )

### Request syntax

    svc$get_keyspace(
      keyspaceName = "string"
    )
