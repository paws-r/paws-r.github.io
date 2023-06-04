<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use to assign one or more tags to a resource

### Description

Use to assign one or more tags to a resource.

### Usage

    codeguruprofiler_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
the tags are added to.</p></td>
</tr>
<tr class="even">
<td><code id="codeguruprofiler_tag_resource_:_tags">tags</code></td>
<td><p>[required] The list of tags that are added to the specified
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
        "string"
      )
    )
