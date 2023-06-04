<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_cache_engine_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the available cache engines and their versions

### Description

Returns a list of the available cache engines and their versions.

### Usage

    elasticache_describe_cache_engine_versions(Engine, EngineVersion,
      CacheParameterGroupFamily, MaxRecords, Marker, DefaultOnly)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_describe_cache_engine_versions_:_Engine">Engine</code></td>
<td><p>The cache engine to return. Valid values: <code>memcached</code>
| <code>redis</code></p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_cache_engine_versions_:_EngineVersion">EngineVersion</code></td>
<td><p>The cache engine version to return.</p>
<p>Example: <code style="white-space: pre;">⁠1.4.14⁠</code></p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_cache_engine_versions_:_CacheParameterGroupFamily">CacheParameterGroupFamily</code></td>
<td><p>The name of a specific cache parameter group family to return
details for.</p>
<p>Valid values are: <code>memcached1.4</code> |
<code>memcached1.5</code> | <code>memcached1.6</code> |
<code>redis2.6</code> | <code>redis2.8</code> | <code>redis3.2</code> |
<code>redis4.0</code> | <code>redis5.0</code> | <code>redis6.x</code> |
<code>redis6.2</code> | <code>redis7</code></p>
<p>Constraints:</p>
<ul>
<li><p>Must be 1 to 255 alphanumeric characters</p></li>
<li><p>First character must be a letter</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_cache_engine_versions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a marker
is included in the response so that the remaining results can be
retrieved.</p>
<p>Default: 100</p>
<p>Constraints: minimum 20; maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_cache_engine_versions_:_Marker">Marker</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_cache_engine_versions_:_DefaultOnly">DefaultOnly</code></td>
<td><p>If <code>true</code>, specifies that only the default version of
the specified engine or engine and major version combination is to be
returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      CacheEngineVersions = list(
        list(
          Engine = "string",
          EngineVersion = "string",
          CacheParameterGroupFamily = "string",
          CacheEngineDescription = "string",
          CacheEngineVersionDescription = "string"
        )
      )
    )

### Request syntax

    svc$describe_cache_engine_versions(
      Engine = "string",
      EngineVersion = "string",
      CacheParameterGroupFamily = "string",
      MaxRecords = 123,
      Marker = "string",
      DefaultOnly = TRUE|FALSE
    )
