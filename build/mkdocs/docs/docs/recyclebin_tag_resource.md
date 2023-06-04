<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>recyclebin_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Assigns tags to the specified retention rule

### Description

Assigns tags to the specified retention rule.

### Usage

    recyclebin_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="recyclebin_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the retention
rule.</p></td>
</tr>
<tr class="even">
<td><code id="recyclebin_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] Information about the tags to assign to the retention
rule.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
