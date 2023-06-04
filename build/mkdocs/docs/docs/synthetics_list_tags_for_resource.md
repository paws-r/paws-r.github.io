<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Displays the tags associated with a canary or group

### Description

Displays the tags associated with a canary or group.

### Usage

    synthetics_list_tags_for_resource(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="synthetics_list_tags_for_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the canary or group that you want to view
tags for.</p>
<p>The ARN format of a canary is
<code>arn:aws:synthetics:Region:account-id:canary:canary-name </code>.</p>
<p>The ARN format of a group is
<code>arn:aws:synthetics:Region:account-id:group:group-name </code></p></td>
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
