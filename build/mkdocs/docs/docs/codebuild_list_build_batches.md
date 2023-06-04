<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codebuild_list_build_batches</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the identifiers of your build batches in the current region

### Description

Retrieves the identifiers of your build batches in the current region.

### Usage

    codebuild_list_build_batches(filter, maxResults, sortOrder, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codebuild_list_build_batches_:_filter">filter</code></td>
<td><p>A <code>BuildBatchFilter</code> object that specifies the filters
for the search.</p></td>
</tr>
<tr class="even">
<td><code
id="codebuild_list_build_batches_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="codebuild_list_build_batches_:_sortOrder">sortOrder</code></td>
<td><p>Specifies the sort order of the returned items. Valid values
include:</p>
<ul>
<li><p><code>ASCENDING</code>: List the batch build identifiers in
ascending order by identifier.</p></li>
<li><p><code>DESCENDING</code>: List the batch build identifiers in
descending order by identifier.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="codebuild_list_build_batches_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous call to
<code>list_build_batches</code>. This specifies the next item to return.
To return the beginning of the list, exclude this parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ids = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_build_batches(
      filter = list(
        status = "SUCCEEDED"|"FAILED"|"FAULT"|"TIMED_OUT"|"IN_PROGRESS"|"STOPPED"
      ),
      maxResults = 123,
      sortOrder = "ASCENDING"|"DESCENDING",
      nextToken = "string"
    )
