<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_delete_notification_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a notification rule for a resource

### Description

Deletes a notification rule for a resource.

### Usage

    codestarnotifications_delete_notification_rule(Arn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarnotifications_delete_notification_rule_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the notification
rule you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$delete_notification_rule(
      Arn = "string"
    )
