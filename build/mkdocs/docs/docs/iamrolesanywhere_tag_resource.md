<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iamrolesanywhere_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches tags to a resource

### Description

Attaches tags to a resource.

**Required permissions:** `rolesanywhere:TagResource`.

### Usage

    iamrolesanywhere_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iamrolesanywhere_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource.</p></td>
</tr>
<tr class="even">
<td><code id="iamrolesanywhere_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags to attach to the resource.</p></td>
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
