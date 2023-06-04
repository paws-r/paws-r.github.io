<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>memorydb_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this operation to remove tags on a resource

### Description

Use this operation to remove tags on a resource

### Usage

    memorydb_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="memorydb_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
which the tags are to be removed</p></td>
</tr>
<tr class="even">
<td><code id="memorydb_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The list of keys of the tags that are to be
removed</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TagList = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
