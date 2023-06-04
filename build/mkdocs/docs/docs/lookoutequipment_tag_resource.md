<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutequipment_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a given tag to a resource in your account

### Description

Associates a given tag to a resource in your account. A tag is a
key-value pair which can be added to an Amazon Lookout for Equipment
resource as metadata. Tags can be used for organizing your resources as
well as helping you to search and filter by tag. Multiple tags can be
added to a resource, either when you create it, or later. Up to 50 tags
can be associated with each resource.

### Usage

    lookoutequipment_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutequipment_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the specific
resource to which the tag should be associated.</p></td>
</tr>
<tr class="even">
<td><code id="lookoutequipment_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tag or tags to be associated with a specific
resource. Both the tag key and value are specified.</p></td>
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
