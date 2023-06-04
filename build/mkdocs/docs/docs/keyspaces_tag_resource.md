<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>keyspaces_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a set of tags with a Amazon Keyspaces resource

### Description

Associates a set of tags with a Amazon Keyspaces resource. You can then
activate these user-defined tags so that they appear on the Cost
Management Console for cost allocation tracking. For more information,
see [Adding tags and labels to Amazon Keyspaces
resources](https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html)
in the *Amazon Keyspaces Developer Guide*.

For IAM policy examples that show how to control access to Amazon
Keyspaces resources based on tags, see Amazon Keyspaces resource access
based on tags in the *Amazon Keyspaces Developer Guide*.

### Usage

    keyspaces_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="keyspaces_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Amazon Keyspaces
resource to which to add tags.</p></td>
</tr>
<tr class="even">
<td><code id="keyspaces_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags to be assigned to the Amazon Keyspaces
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
