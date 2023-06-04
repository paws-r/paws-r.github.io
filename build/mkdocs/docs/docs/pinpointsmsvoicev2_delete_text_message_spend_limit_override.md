<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_delete_text_message_spend_limit_override</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an account-level monthly spending limit override for sending text messages

### Description

Deletes an account-level monthly spending limit override for sending
text messages. Deleting a spend limit override will set the
`EnforcedLimit` to equal the `MaxLimit`, which is controlled by Amazon
Web Services. For more information on spend limits (quotas) see [Amazon
Pinpoint
quotas](https://docs.aws.amazon.com/pinpoint/latest/developerguide/quotas.html)
in the *Amazon Pinpoint Developer Guide*.

### Usage

    pinpointsmsvoicev2_delete_text_message_spend_limit_override()

### Value

A list with the following syntax:

    list(
      MonthlyLimit = 123
    )

### Request syntax

    svc$delete_text_message_spend_limit_override()
