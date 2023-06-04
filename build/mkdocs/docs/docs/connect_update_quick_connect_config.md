<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_quick_connect_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the configuration settings for the specified quick connect

### Description

Updates the configuration settings for the specified quick connect.

### Usage

    connect_update_quick_connect_config(InstanceId, QuickConnectId,
      QuickConnectConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_quick_connect_config_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_quick_connect_config_:_QuickConnectId">QuickConnectId</code></td>
<td><p>[required] The identifier for the quick connect.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_quick_connect_config_:_QuickConnectConfig">QuickConnectConfig</code></td>
<td><p>[required] Information about the configuration settings for the
quick connect.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_quick_connect_config(
      InstanceId = "string",
      QuickConnectId = "string",
      QuickConnectConfig = list(
        QuickConnectType = "USER"|"QUEUE"|"PHONE_NUMBER",
        UserConfig = list(
          UserId = "string",
          ContactFlowId = "string"
        ),
        QueueConfig = list(
          QueueId = "string",
          ContactFlowId = "string"
        ),
        PhoneConfig = list(
          PhoneNumber = "string"
        )
      )
    )
