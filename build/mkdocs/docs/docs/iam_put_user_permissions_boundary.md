<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_put_user_permissions_boundary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates the policy that is specified as the IAM user's permissions boundary

### Description

Adds or updates the policy that is specified as the IAM user's
permissions boundary. You can use an Amazon Web Services managed policy
or a customer managed policy to set the boundary for a user. Use the
boundary to control the maximum permissions that the user can have.
Setting a permissions boundary is an advanced feature that can affect
the permissions for the user.

Policies that are used as permissions boundaries do not provide
permissions. You must also attach a permissions policy to the user. To
learn how the effective permissions for a user are evaluated, see [IAM
JSON policy evaluation
logic](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html)
in the IAM User Guide.

### Usage

    iam_put_user_permissions_boundary(UserName, PermissionsBoundary)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_put_user_permissions_boundary_:_UserName">UserName</code></td>
<td><p>[required] The name (friendly name, not ARN) of the IAM user for
which you want to set the permissions boundary.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_put_user_permissions_boundary_:_PermissionsBoundary">PermissionsBoundary</code></td>
<td><p>[required] The ARN of the managed policy that is used to set the
permissions boundary for the user.</p>
<p>A permissions boundary policy defines the maximum permissions that
identity-based policies can grant to an entity, but does not grant
permissions. Permissions boundaries do not define the maximum
permissions that a resource-based policy can grant to an entity. To
learn more, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions
boundaries for IAM entities</a> in the <em>IAM User Guide</em>.</p>
<p>For more information about policy types, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types">Policy
types</a> in the <em>IAM User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_user_permissions_boundary(
      UserName = "string",
      PermissionsBoundary = "string"
    )
