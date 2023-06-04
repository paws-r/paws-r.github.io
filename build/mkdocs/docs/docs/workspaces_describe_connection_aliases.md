<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workspaces_describe_connection_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves a list that describes the connection aliases used for cross-Region redirection

### Description

Retrieves a list that describes the connection aliases used for
cross-Region redirection. For more information, see [Cross-Region
Redirection for Amazon
WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

### Usage

    workspaces_describe_connection_aliases(AliasIds, ResourceId, Limit,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workspaces_describe_connection_aliases_:_AliasIds">AliasIds</code></td>
<td><p>The identifiers of the connection aliases to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_connection_aliases_:_ResourceId">ResourceId</code></td>
<td><p>The identifier of the directory associated with the connection
alias.</p></td>
</tr>
<tr class="odd">
<td><code
id="workspaces_describe_connection_aliases_:_Limit">Limit</code></td>
<td><p>The maximum number of connection aliases to return.</p></td>
</tr>
<tr class="even">
<td><code
id="workspaces_describe_connection_aliases_:_NextToken">NextToken</code></td>
<td><p>If you received a <code>NextToken</code> from a previous call
that was paginated, provide this token to receive the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConnectionAliases = list(
        list(
          ConnectionString = "string",
          AliasId = "string",
          State = "CREATING"|"CREATED"|"DELETING",
          OwnerAccountId = "string",
          Associations = list(
            list(
              AssociationStatus = "NOT_ASSOCIATED"|"ASSOCIATED_WITH_OWNER_ACCOUNT"|"ASSOCIATED_WITH_SHARED_ACCOUNT"|"PENDING_ASSOCIATION"|"PENDING_DISASSOCIATION",
              AssociatedAccountId = "string",
              ResourceId = "string",
              ConnectionIdentifier = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_connection_aliases(
      AliasIds = list(
        "string"
      ),
      ResourceId = "string",
      Limit = 123,
      NextToken = "string"
    )
