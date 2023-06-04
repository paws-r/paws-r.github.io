<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the association of tags from an Amazon DynamoDB resource

### Description

Removes the association of tags from an Amazon DynamoDB resource. You
can call `untag_resource` up to five times per second, per account.

For an overview on tagging DynamoDB resources, see [Tagging for
DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
in the *Amazon DynamoDB Developer Guide*.

### Usage

    dynamodb_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The DynamoDB resource that the tags will be removed
from. This value is an Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of tag keys. Existing tags of the resource
whose keys are members of this list will be removed from the DynamoDB
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
