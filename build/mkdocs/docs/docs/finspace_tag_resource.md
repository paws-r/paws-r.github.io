<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspace_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds metadata tags to a FinSpace resource

### Description

Adds metadata tags to a FinSpace resource.

### Usage

    finspace_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspace_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="finspace_tag_resource_:_tags">tags</code></td>
<td><p>[required] One or more tags to be assigned to the
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
