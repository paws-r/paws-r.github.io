<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_policy_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified version from the specified managed policy

### Description

Deletes the specified version from the specified managed policy.

You cannot delete the default version from a policy using this
operation. To delete the default version from a policy, use
`delete_policy`. To find out which version of a policy is marked as the
default version, use `list_policy_versions`.

For information about versions for managed policies, see [Versioning for
managed
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-versioning.html)
in the *IAM User Guide*.

### Usage

    iam_delete_policy_version(PolicyArn, VersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_delete_policy_version_:_PolicyArn">PolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM policy from
which you want to delete a version.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_delete_policy_version_:_VersionId">VersionId</code></td>
<td><p>[required] The policy version to delete.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that consists of the lowercase letter 'v' followed by one
or two digits, and optionally followed by a period '.' and a string of
letters and digits.</p>
<p>For more information about managed policy versions, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-versioning.html">Versioning
for managed policies</a> in the <em>IAM User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_policy_version(
      PolicyArn = "string",
      VersionId = "string"
    )
