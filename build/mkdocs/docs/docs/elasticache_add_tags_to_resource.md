<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_add_tags_to_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A tag is a key-value pair where the key and value are case-sensitive

### Description

A tag is a key-value pair where the key and value are case-sensitive.
You can use tags to categorize and track all your ElastiCache resources,
with the exception of global replication group. When you add or remove
tags on replication groups, those actions will be replicated to all
nodes in the replication group. For more information, see
[Resource-level
permissions](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.ResourceLevelPermissions.html).

For example, you can use cost-allocation tags to your ElastiCache
resources, Amazon generates a cost allocation report as a
comma-separated value (CSV) file with your usage and costs aggregated by
your tags. You can apply tags that represent business categories (such
as cost centers, application names, or owners) to organize your costs
across multiple services.

For more information, see [Using Cost Allocation Tags in Amazon
ElastiCache](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Tagging.html)
in the *ElastiCache User Guide*.

### Usage

    elasticache_add_tags_to_resource(ResourceName, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_add_tags_to_resource_:_ResourceName">ResourceName</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
which the tags are to be added, for example
<code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code>
or
<code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.
ElastiCache resources are <em>cluster</em> and <em>snapshot</em>.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs) and Amazon Service Namespaces</a>.</p></td>
</tr>
<tr class="even">
<td><code id="elasticache_add_tags_to_resource_:_Tags">Tags</code></td>
<td><p>[required] A list of tags to be added to this resource. A tag is
a key-value pair. A tag key must be accompanied by a tag value, although
null is accepted.</p></td>
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

    svc$add_tags_to_resource(
      ResourceName = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
