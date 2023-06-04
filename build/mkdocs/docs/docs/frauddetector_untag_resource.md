<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a resource

### Description

Removes tags from a resource.

### Usage

    frauddetector_untag_resource(resourceARN, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="frauddetector_untag_resource_:_resourceARN">resourceARN</code></td>
<td><p>[required] The ARN of the resource from which to remove the
tag.</p></td>
</tr>
<tr class="even">
<td><code
id="frauddetector_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The resource ARN.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      resourceARN = "string",
      tagKeys = list(
        "string"
      )
    )
