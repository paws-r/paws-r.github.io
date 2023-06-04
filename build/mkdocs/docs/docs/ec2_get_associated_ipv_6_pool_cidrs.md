<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_associated_ipv_6_pool_cidrs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about the IPv6 CIDR block associations for a specified IPv6 address pool

### Description

Gets information about the IPv6 CIDR block associations for a specified
IPv6 address pool.

### Usage

    ec2_get_associated_ipv_6_pool_cidrs(PoolId, NextToken, MaxResults,
      DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_get_associated_ipv_6_pool_cidrs_:_PoolId">PoolId</code></td>
<td><p>[required] The ID of the IPv6 address pool.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_associated_ipv_6_pool_cidrs_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_associated_ipv_6_pool_cidrs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_get_associated_ipv_6_pool_cidrs_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Ipv6CidrAssociations = list(
        list(
          Ipv6Cidr = "string",
          AssociatedResource = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_associated_ipv_6_pool_cidrs(
      PoolId = "string",
      NextToken = "string",
      MaxResults = 123,
      DryRun = TRUE|FALSE
    )
