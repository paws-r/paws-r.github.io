<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_create_connection_alias</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates the specified connection alias for use with cross-Region redirection

### Description

Creates the specified connection alias for use with cross-Region
redirection. For more information, see [Cross-Region Redirection for
Amazon
WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

### Usage

    workspaces_create_connection_alias(ConnectionString, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_create_connection_alias_:_ConnectionString">ConnectionString</code></td>
<td><p>[required] A connection string in the form of a fully qualified
domain name (FQDN), such as <code>www.example.com</code>.</p>
<p>After you create a connection string, it is always associated to your
Amazon Web Services account. You cannot recreate the same connection
string with a different account, even if you delete all instances of it
from the original account. The connection string is globally reserved
for your account.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_create_connection_alias_:_Tags">Tags</code></td>
<td><p>The tags to associate with the connection alias.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AliasId = "string"
    )

### Request syntax

    svc$create_connection_alias(
      ConnectionString = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
