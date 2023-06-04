<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_create_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new role for your Amazon Web Services account

### Description

Creates a new role for your Amazon Web Services account. For more
information about roles, see [IAM
roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html).
For information about quotas for role names and the number of roles you
can create, see [IAM and STS
quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
in the *IAM User Guide*.

### Usage

    iam_create_role(Path, RoleName, AssumeRolePolicyDocument, Description,
      MaxSessionDuration, PermissionsBoundary, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_create_role_:_Path">Path</code></td>
<td><p>The path to the role. For more information about paths, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
Identifiers</a> in the <em>IAM User Guide</em>.</p>
<p>This parameter is optional. If it is not included, it defaults to a
slash (/).</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of either a forward slash (/) by itself or a
string that must begin and end with forward slashes. In addition, it can
contain any ASCII character from the ! (<code>U+0021</code>) through the
DEL character (<code style="white-space: pre;">⁠U+007F⁠</code>), including
most punctuation characters, digits, and upper and lowercased
letters.</p></td>
</tr>
<tr class="even">
<td><code id="iam_create_role_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the role to create.</p>
<p>IAM user, group, role, and policy names must be unique within the
account. Names are not distinguished by case. For example, you cannot
create resources named both "MyResource" and "myresource".</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_create_role_:_AssumeRolePolicyDocument">AssumeRolePolicyDocument</code></td>
<td><p>[required] The trust relationship policy document that grants an
entity permission to assume the role.</p>
<p>In IAM, you must provide a JSON policy that has been converted to a
string. However, for CloudFormation templates formatted in YAML, you can
provide the policy in JSON or YAML format. CloudFormation always
converts a YAML policy to JSON format before submitting it to IAM.</p>
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
</ul>
<p>Upon success, the response includes the same trust policy in JSON
format.</p></td>
</tr>
<tr class="even">
<td><code id="iam_create_role_:_Description">Description</code></td>
<td><p>A description of the role.</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_create_role_:_MaxSessionDuration">MaxSessionDuration</code></td>
<td><p>The maximum session duration (in seconds) that you want to set
for the specified role. If you do not specify a value for this setting,
the default value of one hour is applied. This setting can have a value
from 1 hour to 12 hours.</p>
<p>Anyone who assumes the role from the CLI or API can use the
<code>DurationSeconds</code> API parameter or the
<code>duration-seconds</code> CLI parameter to request a longer session.
The <code>MaxSessionDuration</code> setting determines the maximum
duration that can be requested using the <code>DurationSeconds</code>
parameter. If users don't specify a value for the
<code>DurationSeconds</code> parameter, their security credentials are
valid for one hour by default. This applies when you use the <code
style="white-space: pre;">⁠AssumeRole*⁠</code> API operations or the <code
style="white-space: pre;">⁠assume-role*⁠</code> CLI operations but does
not apply when you use those operations to create a console URL. For
more information, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using
IAM roles</a> in the <em>IAM User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="iam_create_role_:_PermissionsBoundary">PermissionsBoundary</code></td>
<td><p>The ARN of the managed policy that is used to set the permissions
boundary for the role.</p>
<p>A permissions boundary policy defines the maximum permissions that
identity-based policies can grant to an entity, but does not grant
permissions. Permissions boundaries do not define the maximum
permissions that a resource-based policy can grant to an entity. To
learn more, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions
boundaries for IAM entities</a> in the <em>IAM User Guide</em>.</p>
<p>For more information about policy types, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policy-types">Policy
types</a> in the <em>IAM User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code id="iam_create_role_:_Tags">Tags</code></td>
<td><p>A list of tags that you want to attach to the new role. Each tag
consists of a key name and an associated value. For more information
about tagging, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging
IAM resources</a> in the <em>IAM User Guide</em>.</p>
<p>If any one of the tags is invalid or if you exceed the allowed
maximum number of tags, then the entire request fails and the resource
is not created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Role = list(
        Path = "string",
        RoleName = "string",
        RoleId = "string",
        Arn = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        AssumeRolePolicyDocument = "string",
        Description = "string",
        MaxSessionDuration = 123,
        PermissionsBoundary = list(
          PermissionsBoundaryType = "PermissionsBoundaryPolicy",
          PermissionsBoundaryArn = "string"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        ),
        RoleLastUsed = list(
          LastUsedDate = as.POSIXct(
            "2015-01-01"
          ),
          Region = "string"
        )
      )
    )

### Request syntax

    svc$create_role(
      Path = "string",
      RoleName = "string",
      AssumeRolePolicyDocument = "string",
      Description = "string",
      MaxSessionDuration = 123,
      PermissionsBoundary = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following command creates a role named Test-Role and attaches a
    # trust policy that you must convert from JSON to a string. Upon success,
    # the response includes the same policy as a URL-encoded JSON string.
    svc$create_role(
      AssumeRolePolicyDocument = "<Stringified-JSON>",
      Path = "/",
      RoleName = "Test-Role"
    )

    ## End(Not run)
