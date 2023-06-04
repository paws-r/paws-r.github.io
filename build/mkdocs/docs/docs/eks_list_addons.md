<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_list_addons</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the available add-ons

### Description

Lists the available add-ons.

### Usage

    eks_list_addons(clusterName, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_list_addons_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the cluster.</p></td>
</tr>
<tr class="even">
<td><code id="eks_list_addons_:_maxResults">maxResults</code></td>
<td><p>The maximum number of add-on results returned by
<code>ListAddonsRequest</code> in paginated output. When you use this
parameter, <code>ListAddonsRequest</code> returns only
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. You can see the remaining
results of the initial request by sending another
<code>ListAddonsRequest</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
you don't use this parameter, <code>ListAddonsRequest</code> returns up
to 100 results and a <code>nextToken</code> value, if
applicable.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_list_addons_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>ListAddonsRequest</code> where <code>maxResults</code>
was used and the results exceeded the value of that parameter.
Pagination continues from the end of the previous results that returned
the <code>nextToken</code> value.</p>
<p>This token should be treated as an opaque identifier that is used
only to retrieve the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      addons = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_addons(
      clusterName = "string",
      maxResults = 123,
      nextToken = "string"
    )
