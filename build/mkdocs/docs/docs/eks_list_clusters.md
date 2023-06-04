<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_list_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the Amazon EKS clusters in your Amazon Web Services account in the specified Region

### Description

Lists the Amazon EKS clusters in your Amazon Web Services account in the
specified Region.

### Usage

    eks_list_clusters(maxResults, nextToken, include)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_list_clusters_:_maxResults">maxResults</code></td>
<td><p>The maximum number of cluster results returned by
<code>list_clusters</code> in paginated output. When you use this
parameter, <code>list_clusters</code> returns only
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. You can see the remaining
results of the initial request by sending another
<code>list_clusters</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
you don't use this parameter, <code>list_clusters</code> returns up to
100 results and a <code>nextToken</code> value if applicable.</p></td>
</tr>
<tr class="even">
<td><code id="eks_list_clusters_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>list_clusters</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value.</p>
<p>This token should be treated as an opaque identifier that is used
only to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_list_clusters_:_include">include</code></td>
<td><p>Indicates whether external clusters are included in the returned
list. Use '<code>all</code>' to return connected clusters, or blank to
return only Amazon EKS clusters. '<code>all</code>' must be in lowercase
otherwise an error occurs.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      clusters = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_clusters(
      maxResults = 123,
      nextToken = "string",
      include = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # This example command lists all of your available clusters in your
    # default region.
    svc$list_clusters()

    ## End(Not run)
