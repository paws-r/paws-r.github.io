<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ecs_list_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of existing clusters

### Description

Returns a list of existing clusters.

### Usage

    ecs_list_clusters(nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ecs_list_clusters_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a
<code>list_clusters</code> request indicating that more results are
available to fulfill the request and further calls are needed. If
<code>maxResults</code> was provided, it's possible the number of
results to be fewer than <code>maxResults</code>.</p>
<p>This token should be treated as an opaque identifier that is only
used to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="even">
<td><code id="ecs_list_clusters_:_maxResults">maxResults</code></td>
<td><p>The maximum number of cluster results that
<code>list_clusters</code> returned in paginated output. When this
parameter is used, <code>list_clusters</code> only returns
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. The remaining results of the
initial request can be seen by sending another
<code>list_clusters</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
this parameter isn't used, then <code>list_clusters</code> returns up to
100 results and a <code>nextToken</code> value if applicable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      clusterArns = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_clusters(
      nextToken = "string",
      maxResults = 123
    )

### Examples

    ## Not run: 
    # This example lists all of your available clusters in your default
    # region.
    svc$list_clusters()

    ## End(Not run)
