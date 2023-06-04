<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_security_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Updates a security profile.

### Usage

    connect_update_security_profile(Description, Permissions,
      SecurityProfileId, InstanceId, AllowedAccessControlTags,
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
id="connect_update_security_profile_:_Description">Description</code></td>
<td><p>The description of the security profile.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_security_profile_:_Permissions">Permissions</code></td>
<td><p>The permissions granted to a security profile. For a list of
valid permissions, see <a
href="https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html">List
of security profile permissions</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_security_profile_:_SecurityProfileId">SecurityProfileId</code></td>
<td><p>[required] The identifier for the security profle.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_security_profile_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_security_profile_:_AllowedAccessControlTags">AllowedAccessControlTags</code></td>
<td><p>The list of tags that a security profile uses to restrict access
to resources in Amazon Connect.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_security_profile_:_TagRestrictedResources">TagRestrictedResources</code></td>
<td><p>The list of resources that a security profile applies tag
restrictions to in Amazon Connect.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_security_profile(
      Description = "string",
      Permissions = list(
        "string"
      ),
      SecurityProfileId = "string",
      InstanceId = "string",
      AllowedAccessControlTags = list(
        "string"
      ),
      TagRestrictedResources = list(
        "string"
      )
    )
