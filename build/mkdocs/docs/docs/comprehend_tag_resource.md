<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a specific tag with an Amazon Comprehend resource

### Description

Associates a specific tag with an Amazon Comprehend resource. A tag is a
key-value pair that adds as a metadata to a resource used by Amazon
Comprehend. For example, a tag with "Sales" as the key might be added to
a resource to indicate its use by the sales department.

### Usage

    comprehend_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the given Amazon
Comprehend resource to which you want to associate the tags.</p></td>
</tr>
<tr class="even">
<td><code id="comprehend_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] Tags being associated with a specific Amazon
Comprehend resource. There can be a maximum of 50 tags (both existing
and pending) associated with a specific resource.</p></td>
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
