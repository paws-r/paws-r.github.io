<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_cache_parameters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the detailed parameter list for a particular cache parameter group

### Description

Returns the detailed parameter list for a particular cache parameter
group.

### Usage

    elasticache_describe_cache_parameters(CacheParameterGroupName, Source,
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
id="elasticache_describe_cache_parameters_:_CacheParameterGroupName">CacheParameterGroupName</code></td>
<td><p>[required] The name of a specific cache parameter group to return
details for.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_cache_parameters_:_Source">Source</code></td>
<td><p>The parameter types to return.</p>
<p>Valid values: <code>user</code> | <code>system</code> |
<code>engine-default</code></p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_cache_parameters_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a marker
is included in the response so that the remaining results can be
retrieved.</p>
<p>Default: 100</p>
<p>Constraints: minimum 20; maximum 100.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_cache_parameters_:_Marker">Marker</code></td>
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
      Parameters = list(
        list(
          ParameterName = "string",
          ParameterValue = "string",
          Description = "string",
          Source = "string",
          DataType = "string",
          AllowedValues = "string",
          IsModifiable = TRUE|FALSE,
          MinimumEngineVersion = "string",
          ChangeType = "immediate"|"requires-reboot"
        )
      ),
      CacheNodeTypeSpecificParameters = list(
        list(
          ParameterName = "string",
          Description = "string",
          Source = "string",
          DataType = "string",
          AllowedValues = "string",
          IsModifiable = TRUE|FALSE,
          MinimumEngineVersion = "string",
          CacheNodeTypeSpecificValues = list(
            list(
              CacheNodeType = "string",
              Value = "string"
            )
          ),
          ChangeType = "immediate"|"requires-reboot"
        )
      )
    )

### Request syntax

    svc$describe_cache_parameters(
      CacheParameterGroupName = "string",
      Source = "string",
      MaxRecords = 123,
      Marker = "string"
    )
