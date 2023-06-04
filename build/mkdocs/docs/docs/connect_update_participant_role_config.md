<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_participant_role_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates timeouts for when human chat participants are to be considered idle, and when agents are automatically disconnected from a chat due to idleness

### Description

Updates timeouts for when human chat participants are to be considered
idle, and when agents are automatically disconnected from a chat due to
idleness. You can set four timers:

-   Customer idle timeout

-   Customer auto-disconnect timeout

-   Agent idle timeout

-   Agent auto-disconnect timeout

For more information about how chat timeouts work, see [Set up chat
timeouts for human
participants](https://docs.aws.amazon.com/connect/latest/adminguide/setup-chat-timeouts.html).

### Usage

    connect_update_participant_role_config(InstanceId, ContactId,
      ChannelConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_participant_role_config_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_participant_role_config_:_ContactId">ContactId</code></td>
<td><p>[required] The identifier of the contact in this instance of
Amazon Connect.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_participant_role_config_:_ChannelConfiguration">ChannelConfiguration</code></td>
<td><p>[required] The Amazon Connect channel you want to
configure.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_participant_role_config(
      InstanceId = "string",
      ContactId = "string",
      ChannelConfiguration = list(
        Chat = list(
          ParticipantTimerConfigList = list(
            list(
              ParticipantRole = "CUSTOMER"|"AGENT",
              TimerType = "IDLE"|"DISCONNECT_NONCUSTOMER",
              TimerValue = list(
                ParticipantTimerAction = "Unset",
                ParticipantTimerDurationInMinutes = 123
              )
            )
          )
        )
      )
    )
