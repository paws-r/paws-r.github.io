<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_list_dedicated_ip_pools</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all of the dedicated IP pools that exist in your Amazon Web Services account in the current Region

### Description

List all of the dedicated IP pools that exist in your Amazon Web
Services account in the current Region.

### Usage

    sesv2_list_dedicated_ip_pools(NextToken, PageSize)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_list_dedicated_ip_pools_:_NextToken">NextToken</code></td>
<td><p>A token returned from a previous call to
<code>list_dedicated_ip_pools</code> to indicate the position in the
list of dedicated IP pools.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_list_dedicated_ip_pools_:_PageSize">PageSize</code></td>
<td><p>The number of results to show in a single call to
<code>list_dedicated_ip_pools</code>. If the number of results is larger
than the number you specified in this parameter, then the response
includes a <code>NextToken</code> element, which you can use to obtain
additional results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DedicatedIpPools = list(
        "string"
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_dedicated_ip_pools(
      NextToken = "string",
      PageSize = 123
    )
