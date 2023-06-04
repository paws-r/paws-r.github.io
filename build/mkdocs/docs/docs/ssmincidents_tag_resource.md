<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmincidents_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a tag to a response plan

### Description

Adds a tag to a response plan.

### Usage

    ssmincidents_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmincidents_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the response plan
you're adding the tags to.</p></td>
</tr>
<tr class="even">
<td><code id="ssmincidents_tag_resource_:_tags">tags</code></td>
<td><p>[required] A list of tags to add to the response plan.</p></td>
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
