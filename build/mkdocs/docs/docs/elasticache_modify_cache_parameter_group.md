<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_modify_cache_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the parameters of a cache parameter group

### Description

Modifies the parameters of a cache parameter group. You can modify up to
20 parameters in a single request by submitting a list parameter name
and value pairs.

### Usage

    elasticache_modify_cache_parameter_group(CacheParameterGroupName,
      ParameterNameValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_modify_cache_parameter_group_:_CacheParameterGroupName">CacheParameterGroupName</code></td>
<td><p>[required] The name of the cache parameter group to
modify.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_modify_cache_parameter_group_:_ParameterNameValues">ParameterNameValues</code></td>
<td><p>[required] An array of parameter names and values for the
parameter update. You must supply at least one parameter name and value;
subsequent arguments are optional. A maximum of 20 parameters may be
modified per request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CacheParameterGroupName = "string"
    )

### Request syntax

    svc$modify_cache_parameter_group(
      CacheParameterGroupName = "string",
      ParameterNameValues = list(
        list(
          ParameterName = "string",
          ParameterValue = "string"
        )
      )
    )
