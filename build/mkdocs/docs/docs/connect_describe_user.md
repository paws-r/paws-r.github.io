<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_describe_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the specified user account

### Description

Describes the specified user account. You can [find the instance ID in
the Amazon Connect
console](https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
(it’s the final part of the ARN). The console does not display the user
IDs. Instead, list the users and note the IDs provided in the output.

### Usage

    connect_describe_user(UserId, InstanceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="connect_describe_user_:_UserId">UserId</code></td>
<td><p>[required] The identifier of the user account.</p></td>
</tr>
<tr class="even">
<td><code id="connect_describe_user_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      User = list(
        Id = "string",
        Arn = "string",
        Username = "string",
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
        Tags = list(
          "string"
        )
      )
    )

### Request syntax

    svc$describe_user(
      UserId = "string",
      InstanceId = "string"
    )
