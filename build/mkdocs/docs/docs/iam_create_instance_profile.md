<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_create_instance_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new instance profile

### Description

Creates a new instance profile. For information about instance profiles,
see [Using roles for applications on Amazon
EC2](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html)
in the *IAM User Guide*, and [Instance
profiles](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html#ec2-instance-profile)
in the *Amazon EC2 User Guide*.

For information about the number of instance profiles you can create,
see [IAM object
quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
in the *IAM User Guide*.

### Usage

    iam_create_instance_profile(InstanceProfileName, Path, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_create_instance_profile_:_InstanceProfileName">InstanceProfileName</code></td>
<td><p>[required] The name of the instance profile to create.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_create_instance_profile_:_Path">Path</code></td>
<td><p>The path to the instance profile. For more information about
paths, see <a
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
<tr class="odd">
<td><code id="iam_create_instance_profile_:_Tags">Tags</code></td>
<td><p>A list of tags that you want to attach to the newly created IAM
instance profile. Each tag consists of a key name and an associated
value. For more information about tagging, see <a
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
      InstanceProfile = list(
        Path = "string",
        InstanceProfileName = "string",
        InstanceProfileId = "string",
        Arn = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        ),
        Roles = list(
          list(
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

    svc$create_instance_profile(
      InstanceProfileName = "string",
      Path = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )

### Examples

    ## Not run: 
    # The following command creates an instance profile named Webserver that
    # is ready to have a role attached and then be associated with an EC2
    # instance.
    svc$create_instance_profile(
      InstanceProfileName = "Webserver"
    )

    ## End(Not run)
