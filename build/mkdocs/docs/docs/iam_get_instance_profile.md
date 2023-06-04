<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_get_instance_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves information about the specified instance profile, including the instance profile's path, GUID, ARN, and role

### Description

Retrieves information about the specified instance profile, including
the instance profile's path, GUID, ARN, and role. For more information
about instance profiles, see [About instance
profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html)
in the *IAM User Guide*.

### Usage

    iam_get_instance_profile(InstanceProfileName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_get_instance_profile_:_InstanceProfileName">InstanceProfileName</code></td>
<td><p>[required] The name of the instance profile to get information
about.</p>
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

    svc$get_instance_profile(
      InstanceProfileName = "string"
    )

### Examples

    ## Not run: 
    # The following command gets information about the instance profile named
    # ExampleInstanceProfile.
    svc$get_instance_profile(
      InstanceProfileName = "ExampleInstanceProfile"
    )

    ## End(Not run)
