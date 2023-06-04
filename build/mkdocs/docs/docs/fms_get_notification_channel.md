<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms_get_notification_channel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Information about the Amazon Simple Notification Service (SNS) topic that is used to record Firewall Manager SNS logs

### Description

Information about the Amazon Simple Notification Service (SNS) topic
that is used to record Firewall Manager SNS logs.

### Usage

    fms_get_notification_channel()

### Value

A list with the following syntax:

    list(
      SnsTopicArn = "string",
      SnsRoleName = "string"
    )

### Request syntax

    svc$get_notification_channel()
