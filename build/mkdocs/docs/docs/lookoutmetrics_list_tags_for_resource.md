<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of tags for a detector, dataset, or alert

### Description

Gets a list of
[tags](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
for a detector, dataset, or alert.

### Usage

    lookoutmetrics_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The resource's Amazon Resource Name (ARN).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$list_tags_for_resource(
      ResourceArn = "string"
    )
