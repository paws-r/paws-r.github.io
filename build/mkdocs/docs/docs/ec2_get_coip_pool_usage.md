<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_get_coip_pool_usage</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the allocations from the specified customer-owned address pool

### Description

Describes the allocations from the specified customer-owned address
pool.

### Usage

    ec2_get_coip_pool_usage(PoolId, Filters, MaxResults, NextToken, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_get_coip_pool_usage_:_PoolId">PoolId</code></td>
<td><p>[required] The ID of the address pool.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_get_coip_pool_usage_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>coip-address-usage.allocation-id</code> - The allocation ID
of the address.</p></li>
<li><p><code>coip-address-usage.aws-account-id</code> - The ID of the
Amazon Web Services account that is using the customer-owned IP
address.</p></li>
<li><p><code>coip-address-usage.aws-service</code> - The Amazon Web
Services service that is using the customer-owned IP address.</p></li>
<li><p><code>coip-address-usage.co-ip</code> - The customer-owned IP
address.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="ec2_get_coip_pool_usage_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_get_coip_pool_usage_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code id="ec2_get_coip_pool_usage_:_DryRun">DryRun</code></td>
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
      CoipPoolId = "string",
      CoipAddressUsages = list(
        list(
          AllocationId = "string",
          AwsAccountId = "string",
          AwsService = "string",
          CoIp = "string"
        )
      ),
      LocalGatewayRouteTableId = "string"
    )

### Request syntax

    svc$get_coip_pool_usage(
      PoolId = "string",
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
