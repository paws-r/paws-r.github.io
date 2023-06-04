<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_reset_cache_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the parameters of a cache parameter group to the engine or system default value

### Description

Modifies the parameters of a cache parameter group to the engine or
system default value. You can reset specific parameters by submitting a
list of parameter names. To reset the entire cache parameter group,
specify the `ResetAllParameters` and `CacheParameterGroupName`
parameters.

### Usage

    elasticache_reset_cache_parameter_group(CacheParameterGroupName,
      ResetAllParameters, ParameterNameValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_reset_cache_parameter_group_:_CacheParameterGroupName">CacheParameterGroupName</code></td>
<td><p>[required] The name of the cache parameter group to
reset.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_reset_cache_parameter_group_:_ResetAllParameters">ResetAllParameters</code></td>
<td><p>If <code>true</code>, all parameters in the cache parameter group
are reset to their default values. If <code>false</code>, only the
parameters listed by <code>ParameterNameValues</code> are reset to their
default values.</p>
<p>Valid values: <code>true</code> | <code>false</code></p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_reset_cache_parameter_group_:_ParameterNameValues">ParameterNameValues</code></td>
<td><p>An array of parameter names to reset to their default values. If
<code>ResetAllParameters</code> is <code>true</code>, do not use
<code>ParameterNameValues</code>. If <code>ResetAllParameters</code> is
<code>false</code>, you must specify the name of at least one parameter
to reset.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CacheParameterGroupName = "string"
    )

### Request syntax

    svc$reset_cache_parameter_group(
      CacheParameterGroupName = "string",
      ResetAllParameters = TRUE|FALSE,
      ParameterNameValues = list(
        list(
          ParameterName = "string",
          ParameterValue = "string"
        )
      )
    )
