<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_update_my_user_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a user's SSH public key

### Description

Updates a user's SSH public key.

**Required Permissions**: To use this action, an IAM user must have
self-management enabled or an attached policy that explicitly grants
permissions. For more information about user permissions, see [Managing
User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_update_my_user_profile(SshPublicKey)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_update_my_user_profile_:_SshPublicKey">SshPublicKey</code></td>
<td><p>The user's SSH public key.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_my_user_profile(
      SshPublicKey = "string"
    )
