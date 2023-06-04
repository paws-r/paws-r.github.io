<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_remove_tags_from_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the tags identified by the TagKeys list from the named resource

### Description

Removes the tags identified by the `TagKeys` list from the named
resource. A tag is a key-value pair where the key and value are
case-sensitive. You can use tags to categorize and track all your
ElastiCache resources, with the exception of global replication group.
When you add or remove tags on replication groups, those actions will be
replicated to all nodes in the replication group. For more information,
see [Resource-level
permissions](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.ResourceLevelPermissions.html).

### Usage

    elasticache_remove_tags_from_resource(ResourceName, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_remove_tags_from_resource_:_ResourceName">ResourceName</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource from
which you want the tags removed, for example
<code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code>
or
<code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs) and Amazon Service Namespaces</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_remove_tags_from_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of <code>TagKeys</code> identifying the tags
you want removed from the named resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$remove_tags_from_resource(
      ResourceName = "string",
      TagKeys = list(
        "string"
      )
    )
