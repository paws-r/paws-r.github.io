<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>clouddirectory_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## An API operation for adding tags to a resource

### Description

An API operation for adding tags to a resource.

### Usage

    clouddirectory_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="clouddirectory_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource.
Tagging is only supported for directories.</p></td>
</tr>
<tr class="even">
<td><code id="clouddirectory_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] A list of tag key-value pairs.</p></td>
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
