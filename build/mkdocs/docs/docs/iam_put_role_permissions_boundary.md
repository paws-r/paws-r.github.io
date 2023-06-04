<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_put_role_permissions_boundary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates the policy that is specified as the IAM role's permissions boundary

### Description

Adds or updates the policy that is specified as the IAM role's
permissions boundary. You can use an Amazon Web Services managed policy
or a customer managed policy to set the boundary for a role. Use the
boundary to control the maximum permissions that the role can have.
Setting a permissions boundary is an advanced feature that can affect
the permissions for the role.

You cannot set the boundary for a service-linked role.

Policies used as permissions boundaries do not provide permissions. You
must also attach a permissions policy to the role. To learn how the
effective permissions for a role are evaluated, see [IAM JSON policy
evaluation
logic](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html)
in the IAM User Guide.

### Usage

    iam_put_role_permissions_boundary(RoleName, PermissionsBoundary)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_put_role_permissions_boundary_:_RoleName">RoleName</code></td>
<td><p>[required] The name (friendly name, not ARN) of the IAM role for
which you want to set the permissions boundary.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_put_role_permissions_boundary_:_PermissionsBoundary">PermissionsBoundary</code></td>
<td><p>[required] The ARN of the managed policy that is used to set the
permissions boundary for the role.</p>
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

    svc$put_role_permissions_boundary(
      RoleName = "string",
      PermissionsBoundary = "string"
    )
