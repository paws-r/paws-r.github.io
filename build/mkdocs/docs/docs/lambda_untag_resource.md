<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lambda_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a function

### Description

Removes
[tags](https://docs.aws.amazon.com/lambda/latest/dg/configuration-tags.html)
from a function.

### Usage

    lambda_untag_resource(Resource, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="lambda_untag_resource_:_Resource">Resource</code></td>
<td><p>[required] The function's Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code id="lambda_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of tag keys to remove from the
function.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      Resource = "string",
      TagKeys = list(
        "string"
      )
    )
