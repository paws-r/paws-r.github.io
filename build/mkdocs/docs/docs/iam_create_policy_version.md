<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_create_policy_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new version of the specified managed policy

### Description

Creates a new version of the specified managed policy. To update a
managed policy, you create a new policy version. A managed policy can
have up to five versions. If the policy has five versions, you must
delete an existing version using `delete_policy_version` before you
create a new version.

Optionally, you can set the new version as the policy's default version.
The default version is the version that is in effect for the IAM users,
groups, and roles to which the policy is attached.

For more information about managed policy versions, see [Versioning for
managed
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-versioning.html)
in the *IAM User Guide*.

### Usage

    iam_create_policy_version(PolicyArn, PolicyDocument, SetAsDefault)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_create_policy_version_:_PolicyArn">PolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM policy to
which you want to add a new version.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_create_policy_version_:_PolicyDocument">PolicyDocument</code></td>
<td><p>[required] The JSON policy document that you want to use as the
content for this new version of the policy.</p>
<p>You must provide policies in JSON format in IAM. However, for
CloudFormation templates formatted in YAML, you can provide the policy
in JSON or YAML format. CloudFormation always converts a YAML policy to
JSON format before submitting it to IAM.</p>
<p>The maximum length of the policy document that you can pass in this
operation, including whitespace, is listed below. To view the maximum
character counts of a managed policy with no whitespaces, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM
and STS character quotas</a>.</p>
<p>The <a href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>
used to validate this parameter is a string of characters consisting of
the following:</p>
<ul>
<li><p>Any printable ASCII character ranging from the space character
(<code>U+0020</code>) through the end of the ASCII character
range</p></li>
<li><p>The printable characters in the Basic Latin and Latin-1
Supplement character set (through <code
style="white-space: pre;">⁠U+00FF⁠</code>)</p></li>
<li><p>The special characters tab (<code>U+0009</code>), line feed
(<code style="white-space: pre;">⁠U+000A⁠</code>), and carriage return
(<code style="white-space: pre;">⁠U+000D⁠</code>)</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="iam_create_policy_version_:_SetAsDefault">SetAsDefault</code></td>
<td><p>Specifies whether to set this version as the policy's default
version.</p>
<p>When this parameter is <code>true</code>, the new policy version
becomes the operative version. That is, it becomes the version that is
in effect for the IAM users, groups, and roles that the policy is
attached to.</p>
<p>For more information about managed policy versions, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-versioning.html">Versioning
for managed policies</a> in the <em>IAM User Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PolicyVersion = list(
        Document = "string",
        VersionId = "string",
        IsDefaultVersion = TRUE|FALSE,
        CreateDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_policy_version(
      PolicyArn = "string",
      PolicyDocument = "string",
      SetAsDefault = TRUE|FALSE
    )
