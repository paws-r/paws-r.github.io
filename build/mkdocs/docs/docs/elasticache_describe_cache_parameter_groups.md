<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_cache_parameter_groups</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of cache parameter group descriptions

### Description

Returns a list of cache parameter group descriptions. If a cache
parameter group name is specified, the list contains only the
descriptions for that group.

### Usage

    elasticache_describe_cache_parameter_groups(CacheParameterGroupName,
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
id="elasticache_describe_cache_parameter_groups_:_CacheParameterGroupName">CacheParameterGroupName</code></td>
<td><p>The name of a specific cache parameter group to return details
for.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_cache_parameter_groups_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a marker
is included in the response so that the remaining results can be
retrieved.</p>
<p>Default: 100</p>
<p>Constraints: minimum 20; maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_cache_parameter_groups_:_Marker">Marker</code></td>
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
      CacheParameterGroups = list(
        list(
          CacheParameterGroupName = "string",
          CacheParameterGroupFamily = "string",
          Description = "string",
          IsGlobal = TRUE|FALSE,
          ARN = "string"
        )
      )
    )

### Request syntax

    svc$describe_cache_parameter_groups(
      CacheParameterGroupName = "string",
      MaxRecords = 123,
      Marker = "string"
    )
