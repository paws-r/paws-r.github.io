<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_cache_security_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of cache security group descriptions

### Description

Returns a list of cache security group descriptions. If a cache security
group name is specified, the list contains only the description of that
group. This applicable only when you have ElastiCache in Classic setup

### Usage

    elasticache_describe_cache_security_groups(CacheSecurityGroupName,
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
id="elasticache_describe_cache_security_groups_:_CacheSecurityGroupName">CacheSecurityGroupName</code></td>
<td><p>The name of the cache security group to return details
for.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_cache_security_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a marker
is included in the response so that the remaining results can be
retrieved.</p>
<p>Default: 100</p>
<p>Constraints: minimum 20; maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_cache_security_groups_:_Marker">Marker</code></td>
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
      CacheSecurityGroups = list(
        list(
          OwnerId = "string",
          CacheSecurityGroupName = "string",
          Description = "string",
          EC2SecurityGroups = list(
            list(
              Status = "string",
              EC2SecurityGroupName = "string",
              EC2SecurityGroupOwnerId = "string"
            )
          ),
          ARN = "string"
        )
      )
    )

### Request syntax

    svc$describe_cache_security_groups(
      CacheSecurityGroupName = "string",
      MaxRecords = 123,
      Marker = "string"
    )
