<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_connection_alias_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the permissions that the owner of a connection alias has granted to another Amazon Web Services account for the specified connection alias

### Description

Describes the permissions that the owner of a connection alias has
granted to another Amazon Web Services account for the specified
connection alias. For more information, see [Cross-Region Redirection
for Amazon
WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

### Usage

    workspaces_describe_connection_alias_permissions(AliasId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_connection_alias_permissions_:_AliasId">AliasId</code></td>
<td><p>[required] The identifier of the connection alias.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_connection_alias_permissions_:_NextToken">NextToken</code></td>
<td><p>If you received a <code>NextToken</code> from a previous call
that was paginated, provide this token to receive the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_describe_connection_alias_permissions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AliasId = "string",
      ConnectionAliasPermissions = list(
        list(
          SharedAccountId = "string",
          AllowAssociation = TRUE|FALSE
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_connection_alias_permissions(
      AliasId = "string",
      NextToken = "string",
      MaxResults = 123
    )
