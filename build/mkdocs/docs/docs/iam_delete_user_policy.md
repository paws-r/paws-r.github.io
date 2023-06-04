<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_user_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified inline policy that is embedded in the specified IAM user

### Description

Deletes the specified inline policy that is embedded in the specified
IAM user.

A user can also have managed policies attached to it. To detach a
managed policy from a user, use `detach_user_policy`. For more
information about policies, refer to [Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

### Usage

    iam_delete_user_policy(UserName, PolicyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_delete_user_policy_:_UserName">UserName</code></td>
<td><p>[required] The name (friendly name, not ARN) identifying the user
that the policy is embedded in.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_delete_user_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name identifying the policy document to
delete.</p>
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

    svc$delete_user_policy(
      UserName = "string",
      PolicyName = "string"
    )

### Examples

    ## Not run: 
    # The following delete-user-policy command removes the specified policy
    # from the IAM user named Juan:
    svc$delete_user_policy(
      PolicyName = "ExamplePolicy",
      UserName = "Juan"
    )

    ## End(Not run)
