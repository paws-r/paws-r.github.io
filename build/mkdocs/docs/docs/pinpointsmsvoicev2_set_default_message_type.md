<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_set_default_message_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the default message type on a configuration set

### Description

Sets the default message type on a configuration set.

Choose the category of SMS messages that you plan to send from this
account. If you send account-related messages or time-sensitive messages
such as one-time passcodes, choose **Transactional**. If you plan to
send messages that contain marketing material or other promotional
content, choose **Promotional**. This setting applies to your entire
Amazon Web Services account.

### Usage

    pinpointsmsvoicev2_set_default_message_type(ConfigurationSetName,
      MessageType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_set_default_message_type_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The configuration set to update with a new default
message type. This field can be the ConsigurationSetName or
ConfigurationSetArn.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointsmsvoicev2_set_default_message_type_:_MessageType">MessageType</code></td>
<td><p>[required] The type of message. Valid values are TRANSACTIONAL
for messages that are critical or time-sensitive and PROMOTIONAL for
messages that aren't critical or time-sensitive.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConfigurationSetArn = "string",
      ConfigurationSetName = "string",
      MessageType = "TRANSACTIONAL"|"PROMOTIONAL"
    )

### Request syntax

    svc$set_default_message_type(
      ConfigurationSetName = "string",
      MessageType = "TRANSACTIONAL"|"PROMOTIONAL"
    )
