<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>quicksight_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a tag or tags from a resource

### Description

Removes a tag or tags from a resource.

### Usage

    quicksight_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="quicksight_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
you want to untag.</p></td>
</tr>
<tr class="even">
<td><code id="quicksight_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The keys of the key-value pairs for the resource tag
or tags assigned to the resource.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestId = "string",
      Status = 123
    )

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
