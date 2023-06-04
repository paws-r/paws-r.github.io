<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>timestreamquery_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the association of tags from a Timestream query resource

### Description

Removes the association of tags from a Timestream query resource.

### Usage

    timestreamquery_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="timestreamquery_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Timestream resource that the tags will be removed
from. This value is an Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="timestreamquery_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of tags keys. Existing tags of the resource
whose keys are members of this list will be removed from the Timestream
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceARN = "string",
      TagKeys = list(
        "string"
      )
    )
