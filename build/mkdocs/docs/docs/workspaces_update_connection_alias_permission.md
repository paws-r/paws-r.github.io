<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_update_connection_alias_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Shares or unshares a connection alias with one account by specifying whether that account has permission to associate the connection alias with a directory

### Description

Shares or unshares a connection alias with one account by specifying
whether that account has permission to associate the connection alias
with a directory. If the association permission is granted, the
connection alias is shared with that account. If the association
permission is revoked, the connection alias is unshared with the
account. For more information, see [Cross-Region Redirection for Amazon
WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

-   Before performing this operation, call
    [DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
    to make sure that the current state of the connection alias is
    `CREATED`.

-   To delete a connection alias that has been shared, the shared
    account must first disassociate the connection alias from any
    directories it has been associated with. Then you must unshare the
    connection alias from the account it has been shared with. You can
    delete a connection alias only after it is no longer shared with any
    accounts or associated with any directories.

### Usage

    workspaces_update_connection_alias_permission(AliasId,
      ConnectionAliasPermission)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_update_connection_alias_permission_:_AliasId">AliasId</code></td>
<td><p>[required] The identifier of the connection alias that you want
to update permissions for.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_update_connection_alias_permission_:_ConnectionAliasPermission">ConnectionAliasPermission</code></td>
<td><p>[required] Indicates whether to share or unshare the connection
alias with the specified Amazon Web Services account.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_connection_alias_permission(
      AliasId = "string",
      ConnectionAliasPermission = list(
        SharedAccountId = "string",
        AllowAssociation = TRUE|FALSE
      )
    )
