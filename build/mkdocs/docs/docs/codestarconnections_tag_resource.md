<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarconnections_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds to or modifies the tags of the given resource

### Description

Adds to or modifies the tags of the given resource. Tags are metadata
that can be used to manage a resource.

### Usage

    codestarconnections_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarconnections_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
which you want to add or update tags.</p></td>
</tr>
<tr class="even">
<td><code id="codestarconnections_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags you want to modify or add to the
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
