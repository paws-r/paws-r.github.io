<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_list_featured_results_sets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all your sets of featured results for a given index

### Description

Lists all your sets of featured results for a given index. Features
results are placed above all other results for certain queries. If
there's an exact match of a query, then one or more specific documents
are featured in the search results.

### Usage

    kendra_list_featured_results_sets(IndexId, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_list_featured_results_sets_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index used for featuring
results.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_list_featured_results_sets_:_NextToken">NextToken</code></td>
<td><p>If the response is truncated, Amazon Kendra returns a pagination
token in the response. You can use this pagination token to retrieve the
next set of featured results sets.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_list_featured_results_sets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of featured results sets to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FeaturedResultsSetSummaryItems = list(
        list(
          FeaturedResultsSetId = "string",
          FeaturedResultsSetName = "string",
          Status = "ACTIVE"|"INACTIVE",
          LastUpdatedTimestamp = 123,
          CreationTimestamp = 123
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_featured_results_sets(
      IndexId = "string",
      NextToken = "string",
      MaxResults = 123
    )
