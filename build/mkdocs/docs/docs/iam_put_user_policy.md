<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_put_user_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates an inline policy document that is embedded in the specified IAM user

### Description

Adds or updates an inline policy document that is embedded in the
specified IAM user.

An IAM user can also have a managed policy attached to it. To attach a
managed policy to a user, use `attach_user_policy`. To create a new
managed policy, use `create_policy`. For information about policies, see
[Managed policies and inline
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
in the *IAM User Guide*.

For information about the maximum number of inline policies that you can
embed in a user, see [IAM and STS
quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
in the *IAM User Guide*.

Because policy documents can be large, you should use POST rather than
GET when calling `put_user_policy`. For general information about using
the Query API with IAM, see [Making query
requests](https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html)
in the *IAM User Guide*.

### Usage

    iam_put_user_policy(UserName, PolicyName, PolicyDocument)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_put_user_policy_:_UserName">UserName</code></td>
<td><p>[required] The name of the user to associate the policy with.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_put_user_policy_:_PolicyName">PolicyName</code></td>
<td><p>[required] The name of the policy document.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_put_user_policy_:_PolicyDocument">PolicyDocument</code></td>
<td><p>[required] The policy document.</p>
<p>You must provide policies in JSON format in IAM. However, for
CloudFormation templates formatted in YAML, you can provide the policy
in JSON or YAML format. CloudFormation always converts a YAML policy to
JSON format before submitting it to IAM.</p>
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
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_user_policy(
      UserName = "string",
      PolicyName = "string",
      PolicyDocument = "string"
    )

### Examples

    ## Not run: 
    # The following command attaches a policy to the IAM user named Bob.
    svc$put_user_policy(
      PolicyDocument = "{\"Version\":\"2012-10-17\",\"Statement\":{\"Effect\":\"Allow\",\"...",
      PolicyName = "AllAccessPolicy",
      UserName = "Bob"
    )

    ## End(Not run)
