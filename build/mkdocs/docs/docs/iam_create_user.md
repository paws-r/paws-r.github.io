<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_create_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new IAM user for your Amazon Web Services account

### Description

Creates a new IAM user for your Amazon Web Services account.

For information about quotas for the number of IAM users you can create,
see [IAM and STS
quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
in the *IAM User Guide*.

### Usage

    iam_create_user(Path, UserName, PermissionsBoundary, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_create_user_:_Path">Path</code></td>
<td><p>The path for the user name. For more information about paths, see
<a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
identifiers</a> in the <em>IAM User Guide</em>.</p>
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
<td><code id="iam_create_user_:_UserName">UserName</code></td>
<td><p>[required] The name of the user to create.</p>
<p>IAM user, group, role, and policy names must be unique within the
account. Names are not distinguished by case. For example, you cannot
create resources named both "MyResource" and "myresource".</p></td>
</tr>
<tr class="odd">
<td><code
id="iam_create_user_:_PermissionsBoundary">PermissionsBoundary</code></td>
<td><p>The ARN of the managed policy that is used to set the permissions
boundary for the user.</p>
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
<tr class="even">
<td><code id="iam_create_user_:_Tags">Tags</code></td>
<td><p>A list of tags that you want to attach to the new user. Each tag
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
      User = list(
        Path = "string",
        UserName = "string",
        UserId = "string",
        Arn = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        PasswordLastUsed = as.POSIXct(
          "2015-01-01"
        ),
        PermissionsBoundary = list(
          PermissionsBoundaryType = "PermissionsBoundaryPolicy",
          PermissionsBoundaryArn = "string"
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

    svc$create_user(
      Path = "string",
      UserName = "string",
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
    # The following create-user command creates an IAM user named Bob in the
    # current account.
    svc$create_user(
      UserName = "Bob"
    )

    ## End(Not run)
