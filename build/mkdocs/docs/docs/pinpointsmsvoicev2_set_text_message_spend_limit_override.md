<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_set_text_message_spend_limit_override</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets an account level monthly spend limit override for sending text messages

### Description

Sets an account level monthly spend limit override for sending text
messages. The requested spend limit must be less than or equal to the
`MaxLimit`, which is set by Amazon Web Services.

### Usage

    pinpointsmsvoicev2_set_text_message_spend_limit_override(MonthlyLimit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_set_text_message_spend_limit_override_:_MonthlyLimit">MonthlyLimit</code></td>
<td><p>[required] The new monthly limit to enforce on text
messages.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MonthlyLimit = 123
    )

### Request syntax

    svc$set_text_message_spend_limit_override(
      MonthlyLimit = 123
    )
