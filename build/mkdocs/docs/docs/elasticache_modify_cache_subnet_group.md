<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_modify_cache_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies an existing cache subnet group

### Description

Modifies an existing cache subnet group.

### Usage

    elasticache_modify_cache_subnet_group(CacheSubnetGroupName,
      CacheSubnetGroupDescription, SubnetIds)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_modify_cache_subnet_group_:_CacheSubnetGroupName">CacheSubnetGroupName</code></td>
<td><p>[required] The name for the cache subnet group. This value is
stored as a lowercase string.</p>
<p>Constraints: Must contain no more than 255 alphanumeric characters or
hyphens.</p>
<p>Example: <code>mysubnetgroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_cache_subnet_group_:_CacheSubnetGroupDescription">CacheSubnetGroupDescription</code></td>
<td><p>A description of the cache subnet group.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_modify_cache_subnet_group_:_SubnetIds">SubnetIds</code></td>
<td><p>The EC2 subnet IDs for the cache subnet group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CacheSubnetGroup = list(
        CacheSubnetGroupName = "string",
        CacheSubnetGroupDescription = "string",
        VpcId = "string",
        Subnets = list(
          list(
            SubnetIdentifier = "string",
            SubnetAvailabilityZone = list(
              Name = "string"
            ),
            SubnetOutpost = list(
              SubnetOutpostArn = "string"
            ),
            SupportedNetworkTypes = list(
              "ipv4"|"ipv6"|"dual_stack"
            )
          )
        ),
        ARN = "string",
        SupportedNetworkTypes = list(
          "ipv4"|"ipv6"|"dual_stack"
        )
      )
    )

### Request syntax

    svc$modify_cache_subnet_group(
      CacheSubnetGroupName = "string",
      CacheSubnetGroupDescription = "string",
      SubnetIds = list(
        "string"
      )
    )
