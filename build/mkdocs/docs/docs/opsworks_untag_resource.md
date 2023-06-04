<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a specified stack or layer

### Description

Removes tags from a specified stack or layer.

### Usage

    opsworks_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The stack or layer's Amazon Resource Number
(ARN).</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of the keys of tags to be removed from a stack
or layer.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
