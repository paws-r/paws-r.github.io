<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_remove_tags_from_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes metadata tags from an Amazon RDS resource

### Description

Removes metadata tags from an Amazon RDS resource.

For an overview on tagging an Amazon RDS resource, see [Tagging Amazon
RDS
Resources](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html)
in the *Amazon RDS User Guide.*

### Usage

    rds_remove_tags_from_resource(ResourceName, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_remove_tags_from_resource_:_ResourceName">ResourceName</code></td>
<td><p>[required] The Amazon RDS resource that the tags are removed
from. This value is an Amazon Resource Name (ARN). For information about
creating an ARN, see <a
href="https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.ARN.html#USER_Tagging.ARN.Constructing">Constructing
an ARN for Amazon RDS</a> in the <em>Amazon RDS User
Guide.</em></p></td>
</tr>
<tr class="even">
<td><code
id="rds_remove_tags_from_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag key (name) of the tag to be removed.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_tags_from_resource(
      ResourceName = "string",
      TagKeys = list(
        "string"
      )
    )
