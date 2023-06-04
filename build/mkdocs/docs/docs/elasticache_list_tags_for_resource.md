<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all tags currently on a named resource

### Description

Lists all tags currently on a named resource.

A tag is a key-value pair where the key and value are case-sensitive.
You can use tags to categorize and track all your ElastiCache resources,
with the exception of global replication group. When you add or remove
tags on replication groups, those actions will be replicated to all
nodes in the replication group. For more information, see
[Resource-level
permissions](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/IAM.ResourceLevelPermissions.html).

If the cluster is not in the *available* state, `list_tags_for_resource`
returns an error.

### Usage

    elasticache_list_tags_for_resource(ResourceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_list_tags_for_resource_:_ResourceName">ResourceName</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource for
which you want the list of tags, for example
<code>arn:aws:elasticache:us-west-2:0123456789:cluster:myCluster</code>
or
<code>arn:aws:elasticache:us-west-2:0123456789:snapshot:mySnapshot</code>.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs) and Amazon Web Services Service
Namespaces</a>.</p></td>
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

    svc$list_tags_for_resource(
      ResourceName = "string"
    )
