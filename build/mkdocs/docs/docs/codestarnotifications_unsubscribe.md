<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_unsubscribe</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an association between a notification rule and an Chatbot topic so that subscribers to that topic stop receiving notifications when the events described in the rule are triggered

### Description

Removes an association between a notification rule and an Chatbot topic
so that subscribers to that topic stop receiving notifications when the
events described in the rule are triggered.

### Usage

    codestarnotifications_unsubscribe(Arn, TargetAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestarnotifications_unsubscribe_:_Arn">Arn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the notification
rule.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_unsubscribe_:_TargetAddress">TargetAddress</code></td>
<td><p>[required] The ARN of the Chatbot topic to unsubscribe from the
notification rule.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Arn = "string"
    )

### Request syntax

    svc$unsubscribe(
      Arn = "string",
      TargetAddress = "string"
    )
