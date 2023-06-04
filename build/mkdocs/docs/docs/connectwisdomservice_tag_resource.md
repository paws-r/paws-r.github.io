<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified tags to the specified resource

### Description

Adds the specified tags to the specified resource.

### Usage

    connectwisdomservice_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
resource.</p></td>
</tr>
<tr class="even">
<td><code id="connectwisdomservice_tag_resource_:_tags">tags</code></td>
<td><p>[required] The tags used to organize, track, or control access
for this resource.</p></td>
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
