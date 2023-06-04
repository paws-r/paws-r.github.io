<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the tags for a resource, given its Amazon Resource Names (ARN)

### Description

Gets the tags for a resource, given its Amazon Resource Names (ARN).

This operation supports ARNs for all resource types in Nimble Studio
that support tags, including studio, studio component, launch profile,
streaming image, and streaming session. All resources that can be tagged
will contain an ARN property, so you do not have to create this ARN
yourself.

### Usage

    nimblestudio_list_tags_for_resource(resourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_list_tags_for_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource for
which you want to list tags.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      resourceArn = "string"
    )
