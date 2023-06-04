<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_policy_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the specified version of the specified managed policy, including the policy document

### Description

Retrieves information about the specified version of the specified
managed policy, including the policy document.

Policies returned by this operation are URL-encoded compliant with [RFC
3986](https://datatracker.ietf.org/doc/html/rfc3986). You can use a URL
decoding method to convert the policy back to plain JSON text. For
example, if you use Java, you can use the `decode` method of the
`java.net.URLDecoder` utility class in the Java SDK. Other languages and
SDKs provide similar functionality.

To list the available versions for a policy, use `list_policy_versions`.

This operation retrieves information about managed policies. To retrieve
information about an inline policy that is embedded in a user, group, or
role, use `get_user_policy`, `get_group_policy`, or `get_role_policy`.

For more information about the types of policies, see [Managed policies
and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

For more information about managed policy versions, see [Versioning for
managed
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-versioning.html)
in the *IAM User Guide*.

### Usage

    iam_get_policy_version(PolicyArn, VersionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_get_policy_version_:_PolicyArn">PolicyArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the managed policy
that you want information about.</p>
<p>For more information about ARNs, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html">Amazon
Resource Names (ARNs)</a> in the <em>Amazon Web Services General
Reference</em>.</p></td>
</tr>
<tr class="even">
<td><code id="iam_get_policy_version_:_VersionId">VersionId</code></td>
<td><p>[required] Identifies the policy version to retrieve.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that consists of the lowercase letter 'v' followed by one
or two digits, and optionally followed by a period '.' and a string of
letters and digits.</p></td>
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

    svc$get_policy_version(
      PolicyArn = "string",
      VersionId = "string"
    )
