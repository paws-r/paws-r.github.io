<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_instance_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified instance profile

### Description

Deletes the specified instance profile. The instance profile must not
have an associated role.

Make sure that you do not have any Amazon EC2 instances running with the
instance profile you are about to delete. Deleting a role or instance
profile that is associated with a running instance will break any
applications running on the instance.

For more information about instance profiles, see [About instance
profiles](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2_instance-profiles.html).

### Usage

    iam_delete_instance_profile(InstanceProfileName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_delete_instance_profile_:_InstanceProfileName">InstanceProfileName</code></td>
<td><p>[required] The name of the instance profile to delete.</p>
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

    svc$delete_instance_profile(
      InstanceProfileName = "string"
    )

### Examples

    ## Not run: 
    # The following command deletes the instance profile named
    # ExampleInstanceProfile
    svc$delete_instance_profile(
      InstanceProfileName = "ExampleInstanceProfile"
    )

    ## End(Not run)
