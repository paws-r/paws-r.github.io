<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A tag is a key-value pair where the key and value are case-sensitive

### Description

A tag is a key-value pair where the key and value are case-sensitive.
You can use tags to categorize and track all your MemoryDB resources.
When you add or remove tags on clusters, those actions will be
replicated to all nodes in the cluster. For more information, see
[Resource-level
permissions](https://docs.aws.amazon.com/memorydb/latest/devguide/iam.resourcelevelpermissions.html).

For example, you can use cost-allocation tags to your MemoryDB
resources, Amazon generates a cost allocation report as a
comma-separated value (CSV) file with your usage and costs aggregated by
your tags. You can apply tags that represent business categories (such
as cost centers, application names, or owners) to organize your costs
across multiple services. For more information, see [Using Cost
Allocation
Tags](https://docs.aws.amazon.com/memorydb/latest/devguide/tagging.html).

### Usage

    memorydb_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
which the tags are to be added</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_tag_resource_:_Tags">Tags</code></td>
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

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
