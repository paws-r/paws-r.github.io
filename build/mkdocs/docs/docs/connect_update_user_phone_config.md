<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_user_phone_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the phone configuration settings for the specified user

### Description

Updates the phone configuration settings for the specified user.

### Usage

    connect_update_user_phone_config(PhoneConfig, UserId, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_user_phone_config_:_PhoneConfig">PhoneConfig</code></td>
<td><p>[required] Information about phone configuration settings for the
user.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_user_phone_config_:_UserId">UserId</code></td>
<td><p>[required] The identifier of the user account.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_user_phone_config_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_user_phone_config(
      PhoneConfig = list(
        PhoneType = "SOFT_PHONE"|"DESK_PHONE",
        AutoAccept = TRUE|FALSE,
        AfterContactWorkTimeLimit = 123,
        DeskPhoneNumber = "string"
      ),
      UserId = "string",
      InstanceId = "string"
    )
