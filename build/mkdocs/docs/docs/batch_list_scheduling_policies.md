<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>batch_list_scheduling_policies</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of Batch scheduling policies

### Description

Returns a list of Batch scheduling policies.

### Usage

    batch_list_scheduling_policies(maxResults, nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="batch_list_scheduling_policies_:_maxResults">maxResults</code></td>
<td><p>The maximum number of results that's returned by
<code>list_scheduling_policies</code> in paginated output. When this
parameter is used, <code>list_scheduling_policies</code> only returns
<code>maxResults</code> results in a single page and a
<code>nextToken</code> response element. You can see the remaining
results of the initial request by sending another
<code>list_scheduling_policies</code> request with the returned
<code>nextToken</code> value. This value can be between 1 and 100. If
this parameter isn't used, <code>list_scheduling_policies</code> returns
up to 100 results and a <code>nextToken</code> value if
applicable.</p></td>
</tr>
<tr class="even">
<td><code
id="batch_list_scheduling_policies_:_nextToken">nextToken</code></td>
<td><p>The <code>nextToken</code> value that's returned from a previous
paginated <code>list_scheduling_policies</code> request where
<code>maxResults</code> was used and the results exceeded the value of
that parameter. Pagination continues from the end of the previous
results that returned the <code>nextToken</code> value. This value is
<code>null</code> when there are no more results to return.</p>
<p>Treat this token as an opaque identifier that's only used to retrieve
the next items in a list and not for other programmatic
purposes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      schedulingPolicies = list(
        list(
          arn = "string"
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$list_scheduling_policies(
      maxResults = 123,
      nextToken = "string"
    )
