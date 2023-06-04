<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codeguruprofiler_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use to remove one or more tags from a resource

### Description

Use to remove one or more tags from a resource.

### Usage

    codeguruprofiler_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codeguruprofiler_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the resource that
contains the tags to remove.</p></td>
</tr>
<tr class="even">
<td><code
id="codeguruprofiler_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] A list of tag keys. Existing tags of resources with
keys in this list are removed from the specified resource.</p></td>
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
