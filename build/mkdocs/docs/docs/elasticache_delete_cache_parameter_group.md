<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_delete_cache_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified cache parameter group

### Description

Deletes the specified cache parameter group. You cannot delete a cache
parameter group if it is associated with any cache clusters. You cannot
delete the default cache parameter groups in your account.

### Usage

    elasticache_delete_cache_parameter_group(CacheParameterGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_delete_cache_parameter_group_:_CacheParameterGroupName">CacheParameterGroupName</code></td>
<td><p>[required] The name of the cache parameter group to delete.</p>
<p>The specified cache security group must not be associated with any
clusters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cache_parameter_group(
      CacheParameterGroupName = "string"
    )
