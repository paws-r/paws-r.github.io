<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_create_cache_security_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new cache security group

### Description

Creates a new cache security group. Use a cache security group to
control access to one or more clusters.

Cache security groups are only used when you are creating a cluster
outside of an Amazon Virtual Private Cloud (Amazon VPC). If you are
creating a cluster inside of a VPC, use a cache subnet group instead.
For more information, see `create_cache_subnet_group`.

### Usage

    elasticache_create_cache_security_group(CacheSecurityGroupName,
      Description, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_create_cache_security_group_:_CacheSecurityGroupName">CacheSecurityGroupName</code></td>
<td><p>[required] A name for the cache security group. This value is
stored as a lowercase string.</p>
<p>Constraints: Must contain no more than 255 alphanumeric characters.
Cannot be the word "Default".</p>
<p>Example: <code>mysecuritygroup</code></p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_create_cache_security_group_:_Description">Description</code></td>
<td><p>[required] A description for the cache security group.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_create_cache_security_group_:_Tags">Tags</code></td>
<td><p>A list of tags to be added to this resource. A tag is a key-value
pair. A tag key must be accompanied by a tag value, although null is
accepted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      CacheSecurityGroup = list(
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

### Request syntax

    svc$create_cache_security_group(
      CacheSecurityGroupName = "string",
      Description = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
