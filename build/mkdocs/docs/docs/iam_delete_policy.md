<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified managed policy

### Description

Deletes the specified managed policy.

Before you can delete a managed policy, you must first detach the policy
from all users, groups, and roles that it is attached to. In addition,
you must delete all the policy's versions. The following steps describe
the process for deleting a managed policy:

-   Detach the policy from all users, groups, and roles that the policy
    is attached to, using `detach_user_policy`, `detach_group_policy`,
    or `detach_role_policy`. To list all the users, groups, and roles
    that a policy is attached to, use `list_entities_for_policy`.

-   Delete all versions of the policy using `delete_policy_version`. To
    list the policy's versions, use `list_policy_versions`. You cannot
    use `delete_policy_version` to delete the version that is marked as
    the default version. You delete the policy's default version in the
    next step of the process.

-   Delete the policy (this automatically deletes the policy's default
    version) using this operation.

For information about managed policies, see [Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

### Usage

    iam_delete_policy(PolicyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_delete_policy_:_PolicyArn">PolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM policy you
want to delete.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_policy(
      PolicyArn = "string"
    )
