<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_coip_pools</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified customer-owned address pools or all of your customer-owned address pools

### Description

Describes the specified customer-owned address pools or all of your
customer-owned address pools.

### Usage

    ec2_describe_coip_pools(PoolIds, Filters, MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_describe_coip_pools_:_PoolIds">PoolIds</code></td>
<td><p>The IDs of the address pools.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_coip_pools_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>coip-pool.local-gateway-route-table-id</code> - The ID of
the local gateway route table.</p></li>
<li><p><code>coip-pool.pool-id</code> - The ID of the address
pool.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_coip_pools_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_describe_coip_pools_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_describe_coip_pools_:_DryRun">DryRun</code></td>
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
      CoipPools = list(
        list(
          PoolId = "string",
          PoolCidrs = list(
            "string"
          ),
          LocalGatewayRouteTableId = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          PoolArn = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_coip_pools(
      PoolIds = list(
        "string"
      ),
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      MaxResults = 123,
      NextToken = "string",
      DryRun = TRUE|FALSE
    )
