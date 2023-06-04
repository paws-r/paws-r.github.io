<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>swf_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add a tag to a Amazon SWF domain

### Description

Add a tag to a Amazon SWF domain.

Amazon SWF supports a maximum of 50 tags per resource.

### Usage

    swf_tag_resource(resourceArn, tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="swf_tag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the Amazon SWF
domain.</p></td>
</tr>
<tr class="even">
<td><code id="swf_tag_resource_:_tags">tags</code></td>
<td><p>[required] The list of tags to add to a domain.</p>
<p>Tags may only contain unicode letters, digits, whitespace, or these
symbols: <code
style="white-space: pre;">⁠_ . : / = + - @⁠</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      resourceArn = "string",
      tags = list(
        list(
          key = "string",
          value = "string"
        )
      )
    )
