<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>eks_list_fargate_profiles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the Fargate profiles associated with the specified cluster in your Amazon Web Services account in the specified Region

### Description

Lists the Fargate profiles associated with the specified cluster in your
Amazon Web Services account in the specified Region.

### Usage

    eks_list_fargate_profiles(clusterName, maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="eks_list_fargate_profiles_:_clusterName">clusterName</code></td>
<td><p>[required] The name of the Amazon EKS cluster that you would like
to list Fargate profiles in.</p></td>
</tr>
<tr class="even">
<td><code
id="eks_list_fargate_profiles_:_maxResults">maxResults</code></td>
<td><p>The maximum number of Fargate profile results returned by
<code>list_fargate_profiles</code> in paginated output. When you use
this parameter, <code>list_fargate_profiles</code> returns only
<code>maxResults</code> results in a single page along with a
<code>nextToken</code> response element. You can see the remaining
results of the initial request by sending another
<code>list_fargate_profiles</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
you don't use this parameter, <code>list_fargate_profiles</code> returns
up to 100 results and a <code>nextToken</code> value if
applicable.</p></td>
</tr>
<tr class="odd">
<td><code
id="eks_list_fargate_profiles_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value returned from a previous
paginated <code>list_fargate_profiles</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      fargateProfileNames = list(
        "string"
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_fargate_profiles(
      clusterName = "string",
      maxResults = 123,
      nextToken = "string"
    )
