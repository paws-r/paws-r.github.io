<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_batch_delete_featured_results_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more sets of featured results

### Description

Removes one or more sets of featured results. Features results are
placed above all other results for certain queries. If there's an exact
match of a query, then one or more specific documents are featured in
the search results.

### Usage

    kendra_batch_delete_featured_results_set(IndexId, FeaturedResultsSetIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_batch_delete_featured_results_set_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index used for featuring
results.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_batch_delete_featured_results_set_:_FeaturedResultsSetIds">FeaturedResultsSetIds</code></td>
<td><p>[required] The identifiers of the featured results sets that you
want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Errors = list(
        list(
          Id = "string",
          ErrorCode = "InternalError"|"InvalidRequest",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_delete_featured_results_set(
      IndexId = "string",
      FeaturedResultsSetIds = list(
        "string"
      )
    )
