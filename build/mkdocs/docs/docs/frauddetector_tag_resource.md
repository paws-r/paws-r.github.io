<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns tags to a resource

### Description

Assigns tags to a resource.

### Usage

    frauddetector_tag_resource(resourceARN, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_tag_resource_:_resourceARN">resourceARN</code></td>
<td><p>[required] The resource ARN.</p></td>
</tr>
<tr class="even">
<td><code id="frauddetector_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags to assign to the resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceARN = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
