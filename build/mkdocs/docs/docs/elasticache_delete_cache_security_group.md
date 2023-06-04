<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_delete_cache_security_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a cache security group

### Description

Deletes a cache security group.

You cannot delete a cache security group if it is associated with any
clusters.

### Usage

    elasticache_delete_cache_security_group(CacheSecurityGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_delete_cache_security_group_:_CacheSecurityGroupName">CacheSecurityGroupName</code></td>
<td><p>[required] The name of the cache security group to delete.</p>
<p>You cannot delete the default security group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cache_security_group(
      CacheSecurityGroupName = "string"
    )
