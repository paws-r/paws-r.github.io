<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_list_query_suggestions_block_lists</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the block lists used for query suggestions for an index

### Description

Lists the block lists used for query suggestions for an index.

For information on the current quota limits for block lists, see [Quotas
for Amazon
Kendra](https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).

`list_query_suggestions_block_lists` is currently not supported in the
Amazon Web Services GovCloud (US-West) region.

### Usage

    kendra_list_query_suggestions_block_lists(IndexId, NextToken,
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
id="kendra_list_query_suggestions_block_lists_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index for a list of all block
lists that exist for that index.</p>
<p>For information on the current quota limits for block lists, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas
for Amazon Kendra</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_list_query_suggestions_block_lists_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there is more
data to retrieve), Amazon Kendra returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
block lists (<code>BlockListSummaryItems</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_list_query_suggestions_block_lists_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of block lists to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BlockListSummaryItems = list(
        list(
          Id = "string",
          Name = "string",
          Status = "ACTIVE"|"CREATING"|"DELETING"|"UPDATING"|"ACTIVE_BUT_UPDATE_FAILED"|"FAILED",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          ItemCount = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_query_suggestions_block_lists(
      IndexId = "string",
      NextToken = "string",
      MaxResults = 123
    )
