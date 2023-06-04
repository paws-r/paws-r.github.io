<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_group_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified inline policy that is embedded in the specified IAM group

### Description

Deletes the specified inline policy that is embedded in the specified
IAM group.

A group can also have managed policies attached to it. To detach a
managed policy from a group, use `detach_group_policy`. For more
information about policies, refer to [Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

### Usage

    iam_delete_group_policy(GroupName, PolicyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_delete_group_policy_:_GroupName">GroupName</code></td>
<td><p>[required] The name (friendly name, not ARN) identifying the
group that the policy is embedded in.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_delete_group_policy_:_PolicyName">PolicyName</code></td>
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

    svc$delete_group_policy(
      GroupName = "string",
      PolicyName = "string"
    )

### Examples

    ## Not run: 
    # The following command deletes the policy named ExamplePolicy from the
    # group named Admins:
    svc$delete_group_policy(
      GroupName = "Admins",
      PolicyName = "ExamplePolicy"
    )

    ## End(Not run)
