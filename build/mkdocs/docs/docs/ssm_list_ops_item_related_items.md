<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_ops_item_related_items</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all related-item resources associated with a Systems Manager OpsCenter OpsItem

### Description

Lists all related-item resources associated with a Systems Manager
OpsCenter OpsItem. OpsCenter is a capability of Amazon Web Services
Systems Manager.

### Usage

    ssm_list_ops_item_related_items(OpsItemId, Filters, MaxResults,
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
id="ssm_list_ops_item_related_items_:_OpsItemId">OpsItemId</code></td>
<td><p>The ID of the OpsItem for which you want to list all related-item
resources.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_ops_item_related_items_:_Filters">Filters</code></td>
<td><p>One or more OpsItem filters. Use a filter to return a more
specific list of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_ops_item_related_items_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_ops_item_related_items_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of items to return. (You received this
token from a previous call.)</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Summaries = list(
        list(
          OpsItemId = "string",
          AssociationId = "string",
          ResourceType = "string",
          AssociationType = "string",
          ResourceUri = "string",
          CreatedBy = list(
            Arn = "string"
          ),
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedBy = list(
            Arn = "string"
          ),
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$list_ops_item_related_items(
      OpsItemId = "string",
      Filters = list(
        list(
          Key = "ResourceType"|"AssociationId"|"ResourceUri",
          Values = list(
            "string"
          ),
          Operator = "Equal"
        )
      ),
      MaxResults = 123,
      NextToken = "string"
    )
