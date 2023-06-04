<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opsworks_describe_permissions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the permissions for a specified stack

### Description

Describes the permissions for a specified stack.

**Required Permissions**: To use this action, an IAM user must have a
Manage permissions level for the stack, or an attached policy that
explicitly grants permissions. For more information on user permissions,
see [Managing User
Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

### Usage

    opsworks_describe_permissions(IamUserArn, StackId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opsworks_describe_permissions_:_IamUserArn">IamUserArn</code></td>
<td><p>The user's IAM ARN. This can also be a federated user's ARN. For
more information about IAM ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">Using
Identifiers</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="opsworks_describe_permissions_:_StackId">StackId</code></td>
<td><p>The stack ID.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Permissions = list(
        list(
          StackId = "string",
          IamUserArn = "string",
          AllowSsh = TRUE|FALSE,
          AllowSudo = TRUE|FALSE,
          Level = "string"
        )
      )
    )

### Request syntax

    svc$describe_permissions(
      IamUserArn = "string",
      StackId = "string"
    )
