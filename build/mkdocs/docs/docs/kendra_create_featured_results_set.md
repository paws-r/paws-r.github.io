<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_create_featured_results_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a set of featured results to display at the top of the search results page

### Description

Creates a set of featured results to display at the top of the search
results page. Featured results are placed above all other results for
certain queries. You map specific queries to specific documents for
featuring in the results. If a query contains an exact match, then one
or more specific documents are featured in the search results.

You can create up to 50 sets of featured results per index. You can
request to increase this limit by contacting
[Support](https://aws.amazon.com/contact-us/).

### Usage

    kendra_create_featured_results_set(IndexId, FeaturedResultsSetName,
      Description, ClientToken, Status, QueryTexts, FeaturedDocuments, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_create_featured_results_set_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index that you want to use for
featuring results.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_featured_results_set_:_FeaturedResultsSetName">FeaturedResultsSetName</code></td>
<td><p>[required] A name for the set of featured results.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_create_featured_results_set_:_Description">Description</code></td>
<td><p>A description for the set of featured results.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_featured_results_set_:_ClientToken">ClientToken</code></td>
<td><p>A token that you provide to identify the request to create a set
of featured results. Multiple calls to the
<code>create_featured_results_set</code> API with the same client token
will create only one featured results set.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_create_featured_results_set_:_Status">Status</code></td>
<td><p>The current status of the set of featured results. When the value
is <code>ACTIVE</code>, featured results are ready for use. You can
still configure your settings before setting the status to
<code>ACTIVE</code>. You can set the status to <code>ACTIVE</code> or
<code>INACTIVE</code> using the <code>update_featured_results_set</code>
API. The queries you specify for featured results must be unique per
featured results set for each index, whether the status is
<code>ACTIVE</code> or <code>INACTIVE</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_featured_results_set_:_QueryTexts">QueryTexts</code></td>
<td><p>A list of queries for featuring results. For more information on
the list of queries, see <a
href="https://docs.aws.amazon.com/kendra/latest/APIReference/API_FeaturedResultsSet.html">FeaturedResultsSet</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_create_featured_results_set_:_FeaturedDocuments">FeaturedDocuments</code></td>
<td><p>A list of document IDs for the documents you want to feature at
the top of the search results page. For more information on the list of
documents, see <a
href="https://docs.aws.amazon.com/kendra/latest/APIReference/API_FeaturedResultsSet.html">FeaturedResultsSet</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_create_featured_results_set_:_Tags">Tags</code></td>
<td><p>A list of key-value pairs that identify or categorize the
featured results set. You can also use tags to help control access to
the featured results set. Tag keys and values can consist of Unicode
letters, digits, white space, and any of the following symbols:_ . : / =
+ - @.</p></td>
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

    svc$create_featured_results_set(
      IndexId = "string",
      FeaturedResultsSetName = "string",
      Description = "string",
      ClientToken = "string",
      Status = "ACTIVE"|"INACTIVE",
      QueryTexts = list(
        "string"
      ),
      FeaturedDocuments = list(
        list(
          Id = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
