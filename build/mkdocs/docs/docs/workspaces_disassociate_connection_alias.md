<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_disassociate_connection_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates a connection alias from a directory

### Description

Disassociates a connection alias from a directory. Disassociating a
connection alias disables cross-Region redirection between two
directories in different Regions. For more information, see
[Cross-Region Redirection for Amazon
WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

Before performing this operation, call
[DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
to make sure that the current state of the connection alias is
`CREATED`.

### Usage

    workspaces_disassociate_connection_alias(AliasId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_disassociate_connection_alias_:_AliasId">AliasId</code></td>
<td><p>[required] The identifier of the connection alias to
disassociate.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_connection_alias(
      AliasId = "string"
    )
