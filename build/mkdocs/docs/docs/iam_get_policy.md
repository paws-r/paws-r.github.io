<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the specified managed policy, including the policy's default version and the total number of IAM users, groups, and roles to which the policy is attached

### Description

Retrieves information about the specified managed policy, including the
policy's default version and the total number of IAM users, groups, and
roles to which the policy is attached. To retrieve the list of the
specific users, groups, and roles that the policy is attached to, use
`list_entities_for_policy`. This operation returns metadata about the
policy. To retrieve the actual policy document for a specific version of
the policy, use `get_policy_version`.

This operation retrieves information about managed policies. To retrieve
information about an inline policy that is embedded with an IAM user,
group, or role, use `get_user_policy`, `get_group_policy`, or
`get_role_policy`.

For more information about policies, see [Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

### Usage

    iam_get_policy(PolicyArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_get_policy_:_PolicyArn">PolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the managed policy
that you want information about.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = list(
        PolicyName = "string",
        PolicyId = "string",
        Arn = "string",
        Path = "string",
        DefaultVersionId = "string",
        AttachmentCount = 123,
        PermissionsBoundaryUsageCount = 123,
        IsAttachable = TRUE|FALSE,
        Description = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        UpdateDate = as.POSIXct(
          "2015-01-01"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$get_policy(
      PolicyArn = "string"
    )
