<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>nimblestudio_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the tags for a resource

### Description

Deletes the tags for a resource.

### Usage

    nimblestudio_untag_resource(resourceArn, tagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="nimblestudio_untag_resource_:_resourceArn">resourceArn</code></td>
<td><p>[required] Identifies the Amazon Resource Name(ARN) key from
which you are removing tags.</p></td>
</tr>
<tr class="even">
<td><code id="nimblestudio_untag_resource_:_tagKeys">tagKeys</code></td>
<td><p>[required] One or more tag keys. Specify only the tag keys, not
the tag values.</p></td>
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
