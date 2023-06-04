<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>efs_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a tag for an EFS resource

### Description

Creates a tag for an EFS resource. You can create tags for EFS file
systems and access points using this API operation.

This operation requires permissions for the
`elasticfilesystem:TagResource` action.

### Usage

    efs_tag_resource(ResourceId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="efs_tag_resource_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID specifying the EFS resource that you want to
create a tag for.</p></td>
</tr>
<tr class="even">
<td><code id="efs_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] An array of <code>Tag</code> objects to add. Each
<code>Tag</code> object is a key-value pair.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
