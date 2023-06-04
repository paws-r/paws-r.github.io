<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>personalize_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Remove tags that are attached to a resource

### Description

Remove tags that are attached to a resource.

### Usage

    personalize_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="personalize_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The resource's Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code id="personalize_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] Keys to remove from the resource's tags.</p></td>
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
