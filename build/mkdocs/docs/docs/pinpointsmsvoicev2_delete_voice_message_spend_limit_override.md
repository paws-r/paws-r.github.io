<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_delete_voice_message_spend_limit_override</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an account level monthly spend limit override for sending voice messages

### Description

Deletes an account level monthly spend limit override for sending voice
messages. Deleting a spend limit override sets the `EnforcedLimit` equal
to the `MaxLimit`, which is controlled by Amazon Web Services. For more
information on spending limits (quotas) see [Amazon Pinpoint
quotas](https://docs.aws.amazon.com/pinpoint/latest/developerguide/quotas.html)
in the *Amazon Pinpoint Developer Guide*.

### Usage

    pinpointsmsvoicev2_delete_voice_message_spend_limit_override()

### Value

A list with the following syntax:

    list(
      MonthlyLimit = 123
    )

### Request syntax

    svc$delete_voice_message_spend_limit_override()
