<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_associate_connection_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates the specified connection alias with the specified directory to enable cross-Region redirection

### Description

Associates the specified connection alias with the specified directory
to enable cross-Region redirection. For more information, see
[Cross-Region Redirection for Amazon
WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

Before performing this operation, call
[DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
to make sure that the current state of the connection alias is
`CREATED`.

### Usage

    workspaces_associate_connection_alias(AliasId, ResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_associate_connection_alias_:_AliasId">AliasId</code></td>
<td><p>[required] The identifier of the connection alias.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_associate_connection_alias_:_ResourceId">ResourceId</code></td>
<td><p>[required] The identifier of the directory to associate the
connection alias with.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectionIdentifier = "string"
    )

### Request syntax

    svc$associate_connection_alias(
      AliasId = "string",
      ResourceId = "string"
    )
