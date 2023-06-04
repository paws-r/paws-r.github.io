<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_assume_role_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the policy that grants an IAM entity permission to assume a role

### Description

Updates the policy that grants an IAM entity permission to assume a
role. This is typically referred to as the "role trust policy". For more
information about roles, see [Using roles to delegate permissions and
federate
identities](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html).

### Usage

    iam_update_assume_role_policy(RoleName, PolicyDocument)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_update_assume_role_policy_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the role to update with the new
policy.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_update_assume_role_policy_:_PolicyDocument">PolicyDocument</code></td>
<td><p>[required] The policy that grants an entity permission to assume
the role.</p>
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

    svc$update_assume_role_policy(
      RoleName = "string",
      PolicyDocument = "string"
    )

### Examples

    ## Not run: 
    # The following command updates the role trust policy for the role named
    # Test-Role:
    svc$update_assume_role_policy(
      PolicyDocument = "{"Version":"2012-10-17","Statement":[{"Effect":"Allow",...",
      RoleName = "S3AccessForEC2Instances"
    )

    ## End(Not run)
