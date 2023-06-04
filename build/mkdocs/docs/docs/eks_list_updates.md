<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_list_updates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the updates associated with an Amazon EKS cluster or managed node group in your Amazon Web Services account, in the specified Region

### Description

Lists the updates associated with an Amazon EKS cluster or managed node
group in your Amazon Web Services account, in the specified Region.

### Usage

    eks_list_updates(name, nodegroupName, addonName, nextToken, maxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="eks_list_updates_:_name">name</code></td>
<td><p>[required] The name of the Amazon EKS cluster to list updates
for.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_list_updates_:_nodegroupName">nodegroupName</code></td>
<td><p>The name of the Amazon EKS managed node group to list updates
for.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_list_updates_:_addonName">addonName</code></td>
<td><p>The names of the installed add-ons that have available
updates.</p></td>
</tr>
<tr class="even">
<td><code id="eks_list_updates_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>list_updates</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value.</p></td>
</tr>
<tr class="odd">
<td><code id="eks_list_updates_:_maxResults">maxResults</code></td>
<td><p>The maximum number of update results returned by
<code>list_updates</code> in paginated output. When you use this
parameter, <code>list_updates</code> returns only
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. You can see the remaining
results of the initial request by sending another
<code>list_updates</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
you don't use this parameter, <code>list_updates</code> returns up to
100 results and a <code>nextToken</code> value if applicable.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      updateIds = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_updates(
      name = "string",
      nodegroupName = "string",
      addonName = "string",
      nextToken = "string",
      maxResults = 123
    )
