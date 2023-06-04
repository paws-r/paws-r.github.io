<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_group_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the specified inline policy document that is embedded in the specified IAM group

### Description

Retrieves the specified inline policy document that is embedded in the
specified IAM group.

Policies returned by this operation are URL-encoded compliant with [RFC
3986](https://datatracker.ietf.org/doc/html/rfc3986). You can use a URL
decoding method to convert the policy back to plain JSON text. For
example, if you use Java, you can use the `decode` method of the
`java.net.URLDecoder` utility class in the Java SDK. Other languages and
SDKs provide similar functionality.

An IAM group can also have managed policies attached to it. To retrieve
a managed policy document that is attached to a group, use `get_policy`
to determine the policy's default version, then use `get_policy_version`
to retrieve the policy document.

For more information about policies, see [Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

### Usage

    iam_get_group_policy(GroupName, PolicyName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_get_group_policy_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group the policy is associated
with.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_get_group_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the policy document to get.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupName = "string",
      PolicyName = "string",
      PolicyDocument = "string"
    )

### Request syntax

    svc$get_group_policy(
      GroupName = "string",
      PolicyName = "string"
    )
