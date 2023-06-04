<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_list_tags_for_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the tags associated with a notification rule

### Description

Returns a list of the tags associated with a notification rule.

### Usage

    codestarnotifications_list_tags_for_resource(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarnotifications_list_tags_for_resource_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the notification
rule.</p></td>
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
      Arn = "string"
    )
