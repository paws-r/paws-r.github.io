<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>prometheusservice_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates tags for the specified resource

### Description

Creates tags for the specified resource.

### Usage

    prometheusservice_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="prometheusservice_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the resource.</p></td>
</tr>
<tr class="even">
<td><code id="prometheusservice_tag_resource_:_tags">tags</code></td>
<td><p>[required]</p></td>
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
