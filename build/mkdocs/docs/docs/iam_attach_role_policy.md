<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_attach_role_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches the specified managed policy to the specified IAM role

### Description

Attaches the specified managed policy to the specified IAM role. When
you attach a managed policy to a role, the managed policy becomes part
of the role's permission (access) policy.

You cannot use a managed policy as the role's trust policy. The role's
trust policy is created at the same time as the role, using
`create_role`. You can update a role's trust policy using
`update_assume_role_policy`.

Use this operation to attach a *managed* policy to a role. To embed an
inline policy in a role, use `put_role_policy`. For more information
about policies, see [Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

As a best practice, you can validate your IAM policies. To learn more,
see [Validating IAM
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html)
in the *IAM User Guide*.

### Usage

    iam_attach_role_policy(RoleName, PolicyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_attach_role_policy_:_RoleName">RoleName</code></td>
<td><p>[required] The name (friendly name, not ARN) of the role to
attach the policy to.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_attach_role_policy_:_PolicyArn">PolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM policy you
want to attach.</p>
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

    svc$attach_role_policy(
      RoleName = "string",
      PolicyArn = "string"
    )

### Examples

    ## Not run: 
    # The following command attaches the AWS managed policy named
    # ReadOnlyAccess to the IAM role named ReadOnlyRole.
    svc$attach_role_policy(
      PolicyArn = "arn:aws:iam::aws:policy/ReadOnlyAccess",
      RoleName = "ReadOnlyRole"
    )

    ## End(Not run)
