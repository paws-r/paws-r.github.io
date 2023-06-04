<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2_delete_default_message_type</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing default message type on a configuration set

### Description

Deletes an existing default message type on a configuration set.

A message type is a type of messages that you plan to send. If you send
account-related messages or time-sensitive messages such as one-time
passcodes, choose **Transactional**. If you plan to send messages that
contain marketing material or other promotional content, choose
**Promotional**. This setting applies to your entire Amazon Web Services
account.

### Usage

    pinpointsmsvoicev2_delete_default_message_type(ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointsmsvoicev2_delete_default_message_type_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>[required] The name of the configuration set or the configuration
set Amazon Resource Name (ARN) to delete the default message type from.
The ConfigurationSetName and ConfigurationSetArn can be found using the
<code>describe_configuration_sets</code> action.</p></td>
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

    svc$delete_default_message_type(
      ConfigurationSetName = "string"
    )
