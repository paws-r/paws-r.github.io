<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_quick_connect</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a quick connect for the specified Amazon Connect instance

### Description

Creates a quick connect for the specified Amazon Connect instance.

### Usage

    connect_create_quick_connect(InstanceId, Name, Description,
      QuickConnectConfig, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_quick_connect_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_quick_connect_:_Name">Name</code></td>
<td><p>[required] The name of the quick connect.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_quick_connect_:_Description">Description</code></td>
<td><p>The description of the quick connect.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_quick_connect_:_QuickConnectConfig">QuickConnectConfig</code></td>
<td><p>[required] Configuration settings for the quick connect.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_create_quick_connect_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      QuickConnectARN = "string",
      QuickConnectId = "string"
    )

### Request syntax

    svc$create_quick_connect(
      InstanceId = "string",
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
