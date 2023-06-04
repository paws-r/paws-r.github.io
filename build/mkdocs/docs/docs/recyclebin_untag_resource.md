<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>recyclebin_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Unassigns a tag from a retention rule

### Description

Unassigns a tag from a retention rule.

### Usage

    recyclebin_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="recyclebin_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the retention
rule.</p></td>
</tr>
<tr class="even">
<td><code id="recyclebin_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The tag keys of the tags to unassign. All tags that
have the specified tag key are unassigned.</p></td>
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
