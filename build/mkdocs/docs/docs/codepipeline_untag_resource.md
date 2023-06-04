<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codepipeline_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from an Amazon Web Services resource

### Description

Removes tags from an Amazon Web Services resource.

### Usage

    codepipeline_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codepipeline_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource to
remove tags from.</p></td>
</tr>
<tr class="even">
<td><code id="codepipeline_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The list of keys for the tags to be removed from the
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceArn = "string",
      tagKeys = list(
        "string"
      )
    )
