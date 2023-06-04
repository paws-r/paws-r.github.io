<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_cache_subnet_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of cache subnet group descriptions

### Description

Returns a list of cache subnet group descriptions. If a subnet group
name is specified, the list contains only the description of that group.
This is applicable only when you have ElastiCache in VPC setup. All
ElastiCache clusters now launch in VPC by default.

### Usage

    elasticache_describe_cache_subnet_groups(CacheSubnetGroupName,
      MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_describe_cache_subnet_groups_:_CacheSubnetGroupName">CacheSubnetGroupName</code></td>
<td><p>The name of the cache subnet group to return details
for.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_cache_subnet_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a marker
is included in the response so that the remaining results can be
retrieved.</p>
<p>Default: 100</p>
<p>Constraints: minimum 20; maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_cache_subnet_groups_:_Marker">Marker</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      CacheSubnetGroups = list(
        list(
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
    )

### Request syntax

    svc$describe_cache_subnet_groups(
      CacheSubnetGroupName = "string",
      MaxRecords = 123,
      Marker = "string"
    )
