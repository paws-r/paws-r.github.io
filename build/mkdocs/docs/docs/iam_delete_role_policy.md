<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_role_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified inline policy that is embedded in the specified IAM role

### Description

Deletes the specified inline policy that is embedded in the specified
IAM role.

A role can also have managed policies attached to it. To detach a
managed policy from a role, use `detach_role_policy`. For more
information about policies, refer to [Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

### Usage

    iam_delete_role_policy(RoleName, PolicyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_delete_role_policy_:_RoleName">RoleName</code></td>
<td><p>[required] The name (friendly name, not ARN) identifying the role
that the policy is embedded in.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_delete_role_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the inline policy to delete from the
specified IAM role.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_role_policy(
      RoleName = "string",
      PolicyName = "string"
    )

### Examples

    ## Not run: 
    # The following command removes the policy named ExamplePolicy from the
    # role named Test-Role.
    svc$delete_role_policy(
      PolicyName = "ExamplePolicy",
      RoleName = "Test-Role"
    )

    ## End(Not run)
