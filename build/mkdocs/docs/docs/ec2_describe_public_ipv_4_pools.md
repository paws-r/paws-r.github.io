<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_describe_public_ipv_4_pools</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified IPv4 address pools

### Description

Describes the specified IPv4 address pools.

### Usage

    ec2_describe_public_ipv_4_pools(PoolIds, NextToken, MaxResults, Filters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_describe_public_ipv_4_pools_:_PoolIds">PoolIds</code></td>
<td><p>The IDs of the address pools.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_public_ipv_4_pools_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_describe_public_ipv_4_pools_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return with a single call. To
retrieve the remaining results, make another call with the returned
<code>nextToken</code> value.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_describe_public_ipv_4_pools_:_Filters">Filters</code></td>
<td><p>One or more filters.</p>
<ul>
<li><p><code>tag</code>:\&lt;key\&gt; - The key/value combination of a
tag assigned to the resource. Use the tag key in the filter name and the
tag value as the filter value. For example, to find all resources that
have a tag with the key <code>Owner</code> and the value
<code>TeamA</code>, specify <code>tag:Owner</code> for the filter name
and <code>TeamA</code> for the filter value.</p></li>
<li><p><code>tag-key</code> - The key of a tag assigned to the resource.
Use this filter to find all resources assigned a tag with a specific
key, regardless of the tag value.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PublicIpv4Pools = list(
        list(
          PoolId = "string",
          Description = "string",
          PoolAddressRanges = list(
            list(
              FirstAddress = "string",
              LastAddress = "string",
              AddressCount = 123,
              AvailableAddressCount = 123
            )
          ),
          TotalAddressCount = 123,
          TotalAvailableAddressCount = 123,
          NetworkBorderGroup = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_public_ipv_4_pools(
      PoolIds = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123,
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      )
    )
