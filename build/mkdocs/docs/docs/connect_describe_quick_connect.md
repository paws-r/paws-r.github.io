<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_quick_connect</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the quick connect

### Description

Describes the quick connect.

### Usage

    connect_describe_quick_connect(InstanceId, QuickConnectId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_describe_quick_connect_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_describe_quick_connect_:_QuickConnectId">QuickConnectId</code></td>
<td><p>[required] The identifier for the quick connect.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QuickConnect = list(
        QuickConnectARN = "string",
        QuickConnectId = "string",
        Name = "string",
        Description = "string",
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
        ),
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_quick_connect(
      InstanceId = "string",
      QuickConnectId = "string"
    )
