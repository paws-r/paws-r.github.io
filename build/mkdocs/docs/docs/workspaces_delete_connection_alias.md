<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_delete_connection_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified connection alias

### Description

Deletes the specified connection alias. For more information, see
[Cross-Region Redirection for Amazon
WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

**If you will no longer be using a fully qualified domain name (FQDN) as
the registration code for your WorkSpaces users, you must take certain
precautions to prevent potential security issues.** For more
information, see [Security Considerations if You Stop Using Cross-Region
Redirection](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html#cross-region-redirection-security-considerations).

To delete a connection alias that has been shared, the shared account
must first disassociate the connection alias from any directories it has
been associated with. Then you must unshare the connection alias from
the account it has been shared with. You can delete a connection alias
only after it is no longer shared with any accounts or associated with
any directories.

### Usage

    workspaces_delete_connection_alias(AliasId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_delete_connection_alias_:_AliasId">AliasId</code></td>
<td><p>[required] The identifier of the connection alias to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_connection_alias(
      AliasId = "string"
    )
