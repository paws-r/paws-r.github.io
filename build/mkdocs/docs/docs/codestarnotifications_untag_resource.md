<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_untag_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the association between one or more provided tags and a notification rule

### Description

Removes the association between one or more provided tags and a
notification rule.

### Usage

    codestarnotifications_untag_resource(Arn, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarnotifications_untag_resource_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the notification
rule from which to remove the tags.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_untag_resource_:_TagKeys">TagKeys</code></td>
<td><p>[required] The key names of the tags to remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_resource(
      Arn = "string",
      TagKeys = list(
        "string"
      )
    )
