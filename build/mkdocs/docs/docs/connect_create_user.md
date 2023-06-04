<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a user account for the specified Amazon Connect instance

### Description

Creates a user account for the specified Amazon Connect instance.

For information about how to create user accounts using the Amazon
Connect console, see [Add
Users](https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html)
in the *Amazon Connect Administrator Guide*.

### Usage

    connect_create_user(Username, Password, IdentityInfo, PhoneConfig,
      DirectoryUserId, SecurityProfileIds, RoutingProfileId, HierarchyGroupId,
      InstanceId, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_create_user_:_Username">Username</code></td>
<td><p>[required] The user name for the account. For instances not using
SAML for identity management, the user name can include up to 20
characters. If you are using SAML for identity management, the user name
can include up to 64 characters from [a-zA-Z0-9_-.\@]+.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_user_:_Password">Password</code></td>
<td><p>The password for the user account. A password is required if you
are using Amazon Connect for identity management. Otherwise, it is an
error to include a password.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_user_:_IdentityInfo">IdentityInfo</code></td>
<td><p>The information about the identity of the user.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_user_:_PhoneConfig">PhoneConfig</code></td>
<td><p>[required] The phone settings for the user.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_user_:_DirectoryUserId">DirectoryUserId</code></td>
<td><p>The identifier of the user account in the directory used for
identity management. If Amazon Connect cannot access the directory, you
can specify this identifier to authenticate users. If you include the
identifier, we assume that Amazon Connect cannot access the directory.
Otherwise, the identity information is used to authenticate users from
your directory.</p>
<p>This parameter is required if you are using an existing directory for
identity management in Amazon Connect when Amazon Connect cannot access
your directory to authenticate users. If you are using SAML for identity
management and include this parameter, an error is returned.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_user_:_SecurityProfileIds">SecurityProfileIds</code></td>
<td><p>[required] The identifier of the security profile for the
user.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_user_:_RoutingProfileId">RoutingProfileId</code></td>
<td><p>[required] The identifier of the routing profile for the
user.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_user_:_HierarchyGroupId">HierarchyGroupId</code></td>
<td><p>The identifier of the hierarchy group for the user.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_create_user_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_create_user_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserId = "string",
      UserArn = "string"
    )

### Request syntax

    svc$create_user(
      Username = "string",
      Password = "string",
      IdentityInfo = list(
        FirstName = "string",
        LastName = "string",
        Email = "string",
        SecondaryEmail = "string",
        Mobile = "string"
      ),
      PhoneConfig = list(
        PhoneType = "SOFT_PHONE"|"DESK_PHONE",
        AutoAccept = TRUE|FALSE,
        AfterContactWorkTimeLimit = 123,
        DeskPhoneNumber = "string"
      ),
      DirectoryUserId = "string",
      SecurityProfileIds = list(
        "string"
      ),
      RoutingProfileId = "string",
      HierarchyGroupId = "string",
      InstanceId = "string",
      Tags = list(
        "string"
      )
    )
