<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_set_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specifies a user's permissions

### Description

Specifies a user's permissions. For more information, see [Security and
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html).

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_set_permission(StackId, IamUserArn, AllowSsh, AllowSudo, Level)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="opsworks_set_permission_:_StackId">StackId</code></td>
<td><p>[required] The stack ID.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_set_permission_:_IamUserArn">IamUserArn</code></td>
<td><p>[required] The user's IAM ARN. This can also be a federated
user's ARN.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_set_permission_:_AllowSsh">AllowSsh</code></td>
<td><p>The user is allowed to use SSH to communicate with the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="opsworks_set_permission_:_AllowSudo">AllowSudo</code></td>
<td><p>The user is allowed to use <strong>sudo</strong> to elevate
privileges.</p></td>
</tr>
<tr class="odd">
<td><code id="opsworks_set_permission_:_Level">Level</code></td>
<td><p>The user's permission level, which must be set to one of the
following strings. You cannot set your own permissions level.</p>
<ul>
<li><p><code>deny</code></p></li>
<li><p><code>show</code></p></li>
<li><p><code>deploy</code></p></li>
<li><p><code>manage</code></p></li>
<li><p><code>iam_only</code></p></li>
</ul>
<p>For more information about the permissions associated with these
levels, see <a
href="https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html">Managing
User Permissions</a>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_permission(
      StackId = "string",
      IamUserArn = "string",
      AllowSsh = TRUE|FALSE,
      AllowSudo = TRUE|FALSE,
      Level = "string"
    )
