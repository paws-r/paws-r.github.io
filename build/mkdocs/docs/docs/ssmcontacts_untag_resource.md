<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssmcontacts_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes tags from the specified resource

### Description

Removes tags from the specified resource.

### Usage

    ssmcontacts_untag_resource(ResourceARN, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssmcontacts_untag_resource_:_ResourceARN">ResourceARN</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the contact or
escalation plan.</p></td>
</tr>
<tr class="even">
<td><code id="ssmcontacts_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The key of the tag that you want to remove.</p></td>
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
