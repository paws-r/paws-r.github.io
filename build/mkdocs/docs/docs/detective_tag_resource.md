<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Applies tag values to a behavior graph

### Description

Applies tag values to a behavior graph.

### Usage

    detective_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="detective_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the behavior graph to assign the tags
to.</p></td>
</tr>
<tr class="even">
<td><code id="detective_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The tags to assign to the behavior graph. You can add
up to 50 tags. For each tag, you provide the tag key and the tag value.
Each tag key can contain up to 128 characters. Each tag value can
contain up to 256 characters.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )
