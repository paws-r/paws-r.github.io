<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_update_user_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a specified user profile

### Description

Updates a specified user profile.

**Required Permissions**: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more information
about user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_update_user_profile(IamUserArn, SshUsername, SshPublicKey,
      AllowSelfManagement)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_update_user_profile_:_IamUserArn">IamUserArn</code></td>
<td><p>[required] The user IAM ARN. This can also be a federated user's
ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_update_user_profile_:_SshUsername">SshUsername</code></td>
<td><p>The user's SSH user name. The allowable characters are [a-z],
[A-Z], [0-9], '-', and '_'. If the specified name includes other
punctuation marks, AWS OpsWorks Stacks removes them. For example,
<code>my.name</code> will be changed to <code>myname</code>. If you do
not specify an SSH user name, AWS OpsWorks Stacks generates one from the
IAM user name.</p></td>
</tr>
<tr class="odd">
<td><code
id="opsworks_update_user_profile_:_SshPublicKey">SshPublicKey</code></td>
<td><p>The user's new SSH public key.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_update_user_profile_:_AllowSelfManagement">AllowSelfManagement</code></td>
<td><p>Whether users can specify their own SSH public key through the My
Settings page. For more information, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/security-settingsshkey.html">Managing
User Permissions</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_user_profile(
      IamUserArn = "string",
      SshUsername = "string",
      SshPublicKey = "string",
      AllowSelfManagement = TRUE|FALSE
    )
