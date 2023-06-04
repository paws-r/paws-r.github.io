<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_delete_user_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a user profile

### Description

Deletes a user profile.

**Required Permissions**: To use this action, an IAM user must have an
attached policy that explicitly grants permissions. For more information
about user permissions, see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_delete_user_profile(IamUserArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_delete_user_profile_:_IamUserArn">IamUserArn</code></td>
<td><p>[required] The user's IAM ARN. This can also be a federated
user's ARN.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_user_profile(
      IamUserArn = "string"
    )
