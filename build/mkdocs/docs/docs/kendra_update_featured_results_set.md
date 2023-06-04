<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_update_featured_results_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a set of featured results

### Description

Updates a set of featured results. Features results are placed above all
other results for certain queries. You map specific queries to specific
documents for featuring in the results. If a query contains an exact
match of a query, then one or more specific documents are featured in
the search results.

### Usage

    kendra_update_featured_results_set(IndexId, FeaturedResultsSetId,
      FeaturedResultsSetName, Description, Status, QueryTexts,
      FeaturedDocuments)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_update_featured_results_set_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index used for featuring
results.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_featured_results_set_:_FeaturedResultsSetId">FeaturedResultsSetId</code></td>
<td><p>[required] The identifier of the set of featured results that you
want to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_featured_results_set_:_FeaturedResultsSetName">FeaturedResultsSetName</code></td>
<td><p>A new name for the set of featured results.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_featured_results_set_:_Description">Description</code></td>
<td><p>A new description for the set of featured results.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_featured_results_set_:_Status">Status</code></td>
<td><p>You can set the status to <code>ACTIVE</code> or
<code>INACTIVE</code>. When the value is <code>ACTIVE</code>, featured
results are ready for use. You can still configure your settings before
setting the status to <code>ACTIVE</code>. The queries you specify for
featured results must be unique per featured results set for each index,
whether the status is <code>ACTIVE</code> or
<code>INACTIVE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_update_featured_results_set_:_QueryTexts">QueryTexts</code></td>
<td><p>A list of queries for featuring results. For more information on
the list of queries, see <a
href="https://docs.aws.amazon.com/kendra/latest/APIReference/API_FeaturedResultsSet.html">FeaturedResultsSet</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_update_featured_results_set_:_FeaturedDocuments">FeaturedDocuments</code></td>
<td><p>A list of document IDs for the documents you want to feature at
the top of the search results page. For more information on the list of
featured documents, see <a
href="https://docs.aws.amazon.com/kendra/latest/APIReference/API_FeaturedResultsSet.html">FeaturedResultsSet</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FeaturedResultsSet = list(
        FeaturedResultsSetId = "string",
        FeaturedResultsSetName = "string",
        Description = "string",
        Status = "ACTIVE"|"INACTIVE",
        QueryTexts = list(
          "string"
        ),
        FeaturedDocuments = list(
          list(
            Id = "string"
          )
        ),
        LastUpdatedTimestamp = 123,
        CreationTimestamp = 123
      )
    )

### Request syntax

    svc$update_featured_results_set(
      IndexId = "string",
      FeaturedResultsSetId = "string",
      FeaturedResultsSetName = "string",
      Description = "string",
      Status = "ACTIVE"|"INACTIVE",
      QueryTexts = list(
        "string"
      ),
      FeaturedDocuments = list(
        list(
          Id = "string"
        )
      )
    )
