<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_delete_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a user account from the specified Amazon Connect instance

### Description

Deletes a user account from the specified Amazon Connect instance.

For information about what happens to a user's data when their account
is deleted, see [Delete Users from Your Amazon Connect
Instance](https://docs.aws.amazon.com/connect/latest/adminguide/delete-users.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_delete_user(InstanceId, UserId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_delete_user_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_delete_user_:_UserId">UserId</code></td>
<td><p>[required] The identifier of the user.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user(
      InstanceId = "string",
      UserId = "string"
    )
