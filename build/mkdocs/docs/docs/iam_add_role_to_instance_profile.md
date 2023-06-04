<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_add_role_to_instance_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified IAM role to the specified instance profile

### Description

Adds the specified IAM role to the specified instance profile. An
instance profile can contain only one role, and this quota cannot be
increased. You can remove the existing role and then add a different
role to an instance profile. You must then wait for the change to appear
across all of Amazon Web Services because of [eventual
consistency](https://en.wikipedia.org/wiki/Eventual_consistency). To
force the change, you must [disassociate the instance
profile](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIamInstanceProfile.html)
and then [associate the instance
profile](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AssociateIamInstanceProfile.html),
or you can stop your instance and then restart it.

The caller of this operation must be granted the `PassRole` permission
on the IAM role by a permissions policy.

For more information about roles, see [Working with
roles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html).
For more information about instance profiles, see [About instance
profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html).

### Usage

    iam_add_role_to_instance_profile(InstanceProfileName, RoleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_add_role_to_instance_profile_:_InstanceProfileName">InstanceProfileName</code></td>
<td><p>[required] The name of the instance profile to update.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_add_role_to_instance_profile_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the role to add.</p>
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

    svc$add_role_to_instance_profile(
      InstanceProfileName = "string",
      RoleName = "string"
    )

### Examples

    ## Not run: 
    # The following command adds the role named S3Access to the instance
    # profile named Webserver:
    svc$add_role_to_instance_profile(
      InstanceProfileName = "Webserver",
      RoleName = "S3Access"
    )

    ## End(Not run)
