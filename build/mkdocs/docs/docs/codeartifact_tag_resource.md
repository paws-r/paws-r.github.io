<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeartifact_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates tags for a resource in CodeArtifact

### Description

Adds or updates tags for a resource in CodeArtifact.

### Usage

    codeartifact_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeartifact_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to add or update tags for.</p></td>
</tr>
<tr class="even">
<td><code id="codeartifact_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags you want to modify or add to the
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
