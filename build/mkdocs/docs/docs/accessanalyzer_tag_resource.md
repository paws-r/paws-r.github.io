<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>accessanalyzer_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a tag to the specified resource

### Description

Adds a tag to the specified resource.

### Usage

    accessanalyzer_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="accessanalyzer_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource to add the tag to.</p></td>
</tr>
<tr class="even">
<td><code id="accessanalyzer_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags to add to the resource.</p></td>
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
