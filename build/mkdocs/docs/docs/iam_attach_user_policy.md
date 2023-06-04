<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_attach_user_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches the specified managed policy to the specified user

### Description

Attaches the specified managed policy to the specified user.

You use this operation to attach a *managed* policy to a user. To embed
an inline policy in a user, use `put_user_policy`.

As a best practice, you can validate your IAM policies. To learn more,
see [Validating IAM
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html)
in the *IAM User Guide*.

For more information about policies, see [Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

### Usage

    iam_attach_user_policy(UserName, PolicyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_attach_user_policy_:_UserName">UserName</code></td>
<td><p>[required] The name (friendly name, not ARN) of the IAM user to
attach the policy to.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_attach_user_policy_:_PolicyArn">PolicyArn</code></td>
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

    svc$attach_user_policy(
      UserName = "string",
      PolicyArn = "string"
    )

### Examples

    ## Not run: 
    # The following command attaches the AWS managed policy named
    # AdministratorAccess to the IAM user named Alice.
    svc$attach_user_policy(
      PolicyArn = "arn:aws:iam::aws:policy/AdministratorAccess",
      UserName = "Alice"
    )

    ## End(Not run)
