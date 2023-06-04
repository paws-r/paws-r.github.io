<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_remove_role_from_instance_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified IAM role from the specified EC2 instance profile

### Description

Removes the specified IAM role from the specified EC2 instance profile.

Make sure that you do not have any Amazon EC2 instances running with the
role you are about to remove from the instance profile. Removing a role
from an instance profile that is associated with a running instance
might break any applications running on the instance.

For more information about IAM roles, see [Working with
roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html).
For more information about instance profiles, see [About instance
profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html).

### Usage

    iam_remove_role_from_instance_profile(InstanceProfileName, RoleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_remove_role_from_instance_profile_:_InstanceProfileName">InstanceProfileName</code></td>
<td><p>[required] The name of the instance profile to update.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_remove_role_from_instance_profile_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the role to remove.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_role_from_instance_profile(
      InstanceProfileName = "string",
      RoleName = "string"
    )

### Examples

    ## Not run: 
    # The following command removes the role named Test-Role from the instance
    # profile named ExampleInstanceProfile.
    svc$remove_role_from_instance_profile(
      InstanceProfileName = "ExampleInstanceProfile",
      RoleName = "Test-Role"
    )

    ## End(Not run)
