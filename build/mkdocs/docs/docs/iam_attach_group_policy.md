<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_attach_group_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Attaches the specified managed policy to the specified IAM group

### Description

Attaches the specified managed policy to the specified IAM group.

You use this operation to attach a managed policy to a group. To embed
an inline policy in a group, use `put_group_policy`.

As a best practice, you can validate your IAM policies. To learn more,
see [Validating IAM
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html)
in the *IAM User Guide*.

For more information about policies, see [Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

### Usage

    iam_attach_group_policy(GroupName, PolicyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_attach_group_policy_:_GroupName">GroupName</code></td>
<td><p>[required] The name (friendly name, not ARN) of the group to
attach the policy to.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_attach_group_policy_:_PolicyArn">PolicyArn</code></td>
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

    svc$attach_group_policy(
      GroupName = "string",
      PolicyArn = "string"
    )

### Examples

    ## Not run: 
    # The following command attaches the AWS managed policy named
    # ReadOnlyAccess to the IAM group named Finance.
    svc$attach_group_policy(
      GroupName = "Finance",
      PolicyArn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
    )

    ## End(Not run)
