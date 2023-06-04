<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>xray_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from an Amazon Web Services X-Ray group or sampling rule

### Description

Removes tags from an Amazon Web Services X-Ray group or sampling rule.
You cannot edit or delete system tags (those with an `⁠aws:⁠` prefix).

### Usage

    xray_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="xray_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of an X-Ray group or
sampling rule.</p></td>
</tr>
<tr class="even">
<td><code id="xray_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] Keys for one or more tags that you want to remove from
an X-Ray group or sampling rule.</p></td>
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
