<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_set_default_policy_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the specified version of the specified policy as the policy's default (operative) version

### Description

Sets the specified version of the specified policy as the policy's
default (operative) version.

This operation affects all users, groups, and roles that the policy is
attached to. To list the users, groups, and roles that the policy is
attached to, use `list_entities_for_policy`.

For information about managed policies, see [Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

### Usage

    iam_set_default_policy_version(PolicyArn, VersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_set_default_policy_version_:_PolicyArn">PolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM policy whose
default version you want to set.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_set_default_policy_version_:_VersionId">VersionId</code></td>
<td><p>[required] The version of the policy to set as the default
(operative) version.</p>
<p>For more information about managed policy versions, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-versioning.html">Versioning
for managed policies</a> in the <em>IAM User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$set_default_policy_version(
      PolicyArn = "string",
      VersionId = "string"
    )
