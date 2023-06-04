<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_create_cache_parameter_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Amazon ElastiCache cache parameter group

### Description

Creates a new Amazon ElastiCache cache parameter group. An ElastiCache
cache parameter group is a collection of parameters and their values
that are applied to all of the nodes in any cluster or replication group
using the CacheParameterGroup.

A newly created CacheParameterGroup is an exact duplicate of the default
parameter group for the CacheParameterGroupFamily. To customize the
newly created CacheParameterGroup you can change the values of specific
parameters. For more information, see:

-   `modify_cache_parameter_group` in the ElastiCache API Reference.

-   [Parameters and Parameter
    Groups](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ParameterGroups.html)
    in the ElastiCache User Guide.

### Usage

    elasticache_create_cache_parameter_group(CacheParameterGroupName,
      CacheParameterGroupFamily, Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_create_cache_parameter_group_:_CacheParameterGroupName">CacheParameterGroupName</code></td>
<td><p>[required] A user-specified name for the cache parameter
group.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_parameter_group_:_CacheParameterGroupFamily">CacheParameterGroupFamily</code></td>
<td><p>[required] The name of the cache parameter group family that the
cache parameter group can be used with.</p>
<p>Valid values are: <code>memcached1.4</code> |
<code>memcached1.5</code> | <code>memcached1.6</code> |
<code>redis2.6</code> | <code>redis2.8</code> | <code>redis3.2</code> |
<code>redis4.0</code> | <code>redis5.0</code> | <code>redis6.x</code> |
<code>redis7</code></p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_parameter_group_:_Description">Description</code></td>
<td><p>[required] A user-specified description for the cache parameter
group.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_parameter_group_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. A tag is a key-value
pair. A tag key must be accompanied by a tag value, although null is
accepted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CacheParameterGroup = list(
        CacheParameterGroupName = "string",
        CacheParameterGroupFamily = "string",
        Description = "string",
        IsGlobal = TRUE|FALSE,
        ARN = "string"
      )
    )

### Request syntax

    svc$create_cache_parameter_group(
      CacheParameterGroupName = "string",
      CacheParameterGroupFamily = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
