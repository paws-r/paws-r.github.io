<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_set_default_sender_id</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets default sender ID on a configuration set

### Description

Sets default sender ID on a configuration set.

When sending a text message to a destination country that supports
sender IDs, the default sender ID on the configuration set specified
will be used if no dedicated origination phone numbers or registered
sender IDs are available in your account.

### Usage

    pinpointsmsvoicev2_set_default_sender_id(ConfigurationSetName, SenderId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_set_default_sender_id_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The configuration set to updated with a new default
SenderId. This field can be the ConsigurationSetName or
ConfigurationSetArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_set_default_sender_id_:_SenderId">SenderId</code></td>
<td><p>[required] The current sender ID for the configuration set. When
sending a text message to a destination country which supports
SenderIds, the default sender ID on the configuration set specified on
<code>send_text_message</code> will be used if no dedicated origination
phone numbers or registered SenderIds are available in your account,
instead of a generic sender ID, such as 'NOTICE'.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSetArn = "string",
      ConfigurationSetName = "string",
      SenderId = "string"
    )

### Request syntax

    svc$set_default_sender_id(
      ConfigurationSetName = "string",
      SenderId = "string"
    )
