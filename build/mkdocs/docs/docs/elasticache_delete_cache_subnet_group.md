<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_delete_cache_subnet_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a cache subnet group

### Description

Deletes a cache subnet group.

You cannot delete a default cache subnet group or one that is associated
with any clusters.

### Usage

    elasticache_delete_cache_subnet_group(CacheSubnetGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_delete_cache_subnet_group_:_CacheSubnetGroupName">CacheSubnetGroupName</code></td>
<td><p>[required] The name of the cache subnet group to delete.</p>
<p>Constraints: Must contain no more than 255 alphanumeric characters or
hyphens.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_cache_subnet_group(
      CacheSubnetGroupName = "string"
    )
