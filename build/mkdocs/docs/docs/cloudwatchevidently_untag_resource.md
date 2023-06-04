<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudwatchevidently_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from the specified resource

### Description

Removes one or more tags from the specified resource.

### Usage

    cloudwatchevidently_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudwatchevidently_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] The ARN of the CloudWatch Evidently resource that
you're removing tags from.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudwatchevidently_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] The list of tag keys to remove from the
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
