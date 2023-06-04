<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_describe_inventory_deletions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a specific delete inventory operation

### Description

Describes a specific delete inventory operation.

### Usage

    ssm_describe_inventory_deletions(DeletionId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_describe_inventory_deletions_:_DeletionId">DeletionId</code></td>
<td><p>Specify the delete inventory ID for which you want information.
This ID was returned by the <code>delete_inventory</code>
operation.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_describe_inventory_deletions_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_describe_inventory_deletions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. The call
also returns a token that you can specify in a subsequent call to get
the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InventoryDeletions = list(
        list(
          DeletionId = "string",
          TypeName = "string",
          DeletionStartTime = as.POSIXct(
            "2015-01-01"
          ),
          LastStatus = "InProgress"|"Complete",
          LastStatusMessage = "string",
          DeletionSummary = list(
            TotalCount = 123,
            RemainingCount = 123,
            SummaryItems = list(
              list(
                Version = "string",
                Count = 123,
                RemainingCount = 123
              )
            )
          ),
          LastStatusUpdateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_inventory_deletions(
      DeletionId = "string",
      NextToken = "string",
      MaxResults = 123
    )
