<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates tags for a resource, given its ARN

### Description

Creates tags for a resource, given its ARN.

### Usage

    nimblestudio_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource you
want to add tags to.</p></td>
</tr>
<tr class="even">
<td><code id="nimblestudio_tag_resource_:_tags">tags</code></td>
<td><p>A collection of labels, in the form of key-value pairs, that
apply to this resource.</p></td>
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
