<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more tags from the specified resource

### Description

Removes one or more tags from the specified resource.

### Usage

    synthetics_untag_resource(ResourceArn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="synthetics_untag_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the canary or group that you're removing
tags from.</p>
<p>The ARN format of a canary is
<code>arn:aws:synthetics:Region:account-id:canary:canary-name </code>.</p>
<p>The ARN format of a group is
<code>arn:aws:synthetics:Region:account-id:group:group-name </code></p></td>
</tr>
<tr class="even">
<td><code id="synthetics_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The list of tag keys to remove from the
resource.</p></td>
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
