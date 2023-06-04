<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_create_security_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Creates a security profile.

### Usage

    connect_create_security_profile(SecurityProfileName, Description,
      Permissions, InstanceId, Tags, AllowedAccessControlTags,
      TagRestrictedResources)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_create_security_profile_:_SecurityProfileName">SecurityProfileName</code></td>
<td><p>[required] The name of the security profile.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_security_profile_:_Description">Description</code></td>
<td><p>The description of the security profile.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_security_profile_:_Permissions">Permissions</code></td>
<td><p>Permissions assigned to the security profile. For a list of valid
permissions, see <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List
of security profile permissions</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_security_profile_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_create_security_profile_:_Tags">Tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource. For example, { "tags": {"key1":"value1", "key2":"value2"}
}.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_create_security_profile_:_AllowedAccessControlTags">AllowedAccessControlTags</code></td>
<td><p>The list of tags that a security profile uses to restrict access
to resources in Amazon Connect.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_create_security_profile_:_TagRestrictedResources">TagRestrictedResources</code></td>
<td><p>The list of resources that a security profile applies tag
restrictions to in Amazon Connect. Following are acceptable
ResourceNames: <code>User</code> | <code>SecurityProfile</code> |
<code>Queue</code> | <code>RoutingProfile</code></p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecurityProfileId = "string",
      SecurityProfileArn = "string"
    )

### Request syntax

    svc$create_security_profile(
      SecurityProfileName = "string",
      Description = "string",
      Permissions = list(
        "string"
      ),
      InstanceId = "string",
      Tags = list(
        "string"
      ),
      AllowedAccessControlTags = list(
        "string"
      ),
      TagRestrictedResources = list(
        "string"
      )
    )
