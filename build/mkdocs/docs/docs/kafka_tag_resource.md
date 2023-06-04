<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafka_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tags to the specified MSK resource

### Description

Adds tags to the specified MSK resource.

### Usage

    kafka_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kafka_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) that uniquely
identifies the resource that's associated with the tags.</p></td>
</tr>
<tr class="even">
<td><code id="kafka_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] The key-value pair for the resource tag.</p></td>
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
