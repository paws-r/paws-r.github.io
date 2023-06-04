<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dynamodb_list_tags_of_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## List all tags on an Amazon DynamoDB resource

### Description

List all tags on an Amazon DynamoDB resource. You can call
ListTagsOfResource up to 10 times per second, per account.

For an overview on tagging DynamoDB resources, see [Tagging for
DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tagging.html)
in the *Amazon DynamoDB Developer Guide*.

### Usage

    dynamodb_list_tags_of_resource(ResourceArn, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dynamodb_list_tags_of_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon DynamoDB resource with tags to be listed.
This value is an Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="dynamodb_list_tags_of_resource_:_NextToken">NextToken</code></td>
<td><p>An optional string that, if supplied, must be copied from the
output of a previous call to ListTagOfResource. When provided in this
manner, this API fetches the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_tags_of_resource(
      ResourceArn = "string",
      NextToken = "string"
    )
