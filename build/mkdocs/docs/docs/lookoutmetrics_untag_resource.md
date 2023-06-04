<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from a detector, dataset, or alert

### Description

Removes
[tags](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
from a detector, dataset, or alert.

### Usage

    lookoutmetrics_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The resource's Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code
id="lookoutmetrics_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] Keys to remove from the resource's tags.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      ResourceArn = "string",
      TagKeys = list(
        "string"
      )
    )
