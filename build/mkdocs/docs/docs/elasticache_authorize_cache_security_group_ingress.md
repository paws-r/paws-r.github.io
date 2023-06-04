<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_authorize_cache_security_group_ingress</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Allows network ingress to a cache security group

### Description

Allows network ingress to a cache security group. Applications using
ElastiCache must be running on Amazon EC2, and Amazon EC2 security
groups are used as the authorization mechanism.

You cannot authorize ingress from an Amazon EC2 security group in one
region to an ElastiCache cluster in another region.

### Usage

    elasticache_authorize_cache_security_group_ingress(
      CacheSecurityGroupName, EC2SecurityGroupName, EC2SecurityGroupOwnerId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_authorize_cache_security_group_ingress_:_CacheSecurityGroupName">CacheSecurityGroupName</code></td>
<td><p>[required] The cache security group that allows network
ingress.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_authorize_cache_security_group_ingress_:_EC2SecurityGroupName">EC2SecurityGroupName</code></td>
<td><p>[required] The Amazon EC2 security group to be authorized for
ingress to the cache security group.</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_authorize_cache_security_group_ingress_:_EC2SecurityGroupOwnerId">EC2SecurityGroupOwnerId</code></td>
<td><p>[required] The Amazon account number of the Amazon EC2 security
group owner. Note that this is not the same thing as an Amazon access
key ID - you must provide a valid Amazon account number for this
parameter.</p></td>
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

    svc$authorize_cache_security_group_ingress(
      CacheSecurityGroupName = "string",
      EC2SecurityGroupName = "string",
      EC2SecurityGroupOwnerId = "string"
    )
