<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_user_identity_info</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the identity information for the specified user

### Description

Updates the identity information for the specified user.

We strongly recommend limiting who has the ability to invoke
`update_user_identity_info`. Someone with that ability can change the
login credentials of other users by changing their email address. This
poses a security risk to your organization. They can change the email
address of a user to the attacker's email address, and then reset the
password through email. For more information, see [Best Practices for
Security
Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_update_user_identity_info(IdentityInfo, UserId, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_user_identity_info_:_IdentityInfo">IdentityInfo</code></td>
<td><p>[required] The identity information for the user.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_user_identity_info_:_UserId">UserId</code></td>
<td><p>[required] The identifier of the user account.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_user_identity_info_:_InstanceId">InstanceId</code></td>
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

    svc$update_user_identity_info(
      IdentityInfo = list(
        FirstName = "string",
        LastName = "string",
        Email = "string",
        SecondaryEmail = "string",
        Mobile = "string"
      ),
      UserId = "string",
      InstanceId = "string"
    )
