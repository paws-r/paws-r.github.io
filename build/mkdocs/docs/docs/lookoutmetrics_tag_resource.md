<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lookoutmetrics_tag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds tags to a detector, dataset, or alert

### Description

Adds
[tags](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
to a detector, dataset, or alert.

### Usage

    lookoutmetrics_tag_resource(ResourceArn, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lookoutmetrics_tag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The resource's Amazon Resource Name (ARN).</p></td>
</tr>
<tr class="even">
<td><code id="lookoutmetrics_tag_resource_:_Tags">Tags</code></td>
<td><p>[required] Tags to apply to the resource. Tag keys and values can
contain letters, numbers, spaces, and the following symbols: <code
style="white-space: pre;">⁠_.:/=+@-⁠</code></p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$tag_resource(
      ResourceArn = "string",
      Tags = list(
        "string"
      )
    )
