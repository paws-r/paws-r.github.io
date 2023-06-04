<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_describe_featured_results_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about a set of featured results

### Description

Gets information about a set of featured results. Features results are
placed above all other results for certain queries. If there's an exact
match of a query, then one or more specific documents are featured in
the search results.

### Usage

    kendra_describe_featured_results_set(IndexId, FeaturedResultsSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_describe_featured_results_set_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index used for featuring
results.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_describe_featured_results_set_:_FeaturedResultsSetId">FeaturedResultsSetId</code></td>
<td><p>[required] The identifier of the set of featured results that you
want to get information on.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FeaturedResultsSetId = "string",
      FeaturedResultsSetName = "string",
      Description = "string",
      Status = "ACTIVE"|"INACTIVE",
      QueryTexts = list(
        "string"
      ),
      FeaturedDocumentsWithMetadata = list(
        list(
          Id = "string",
          Title = "string",
          URI = "string"
        )
      ),
      FeaturedDocumentsMissing = list(
        list(
          Id = "string"
        )
      ),
      LastUpdatedTimestamp = 123,
      CreationTimestamp = 123
    )

### Request syntax

    svc$describe_featured_results_set(
      IndexId = "string",
      FeaturedResultsSetId = "string"
    )
