<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associate a set of tags with an Amazon DynamoDB resource

### Description

Associate a set of tags with an Amazon DynamoDB resource. You can then
activate these user-defined tags so that they appear on the Billing and
Cost Management console for cost allocation tracking. You can call
TagResource up to five times per second, per account.

For an overview on tagging DynamoDB resources, see [Tagging for
DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
in the *Amazon DynamoDB Developer Guide*.

### Usage

    dynamodb_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] Identifies the Amazon DynamoDB resource to which tags
should be added. This value is an Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code id="dynamodb_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to be assigned to the Amazon DynamoDB
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

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
