<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified role

### Description

Deletes the specified role. Unlike the Amazon Web Services Management
Console, when you delete a role programmatically, you must delete the
items attached to the role manually, or the deletion fails. For more
information, see [Deleting an IAM
role](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_manage_delete.html#roles-managingrole-deleting-cli).
Before attempting to delete a role, remove the following attached items:

-   Inline policies (`delete_role_policy`)

-   Attached managed policies (`detach_role_policy`)

-   Instance profile (`remove_role_from_instance_profile`)

-   Optional – Delete instance profile after detaching from role for
    resource clean up (`delete_instance_profile`)

Make sure that you do not have any Amazon EC2 instances running with the
role you are about to delete. Deleting a role or instance profile that
is associated with a running instance will break any applications
running on the instance.

### Usage

    iam_delete_role(RoleName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_delete_role_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the role to delete.</p>
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

    svc$delete_role(
      RoleName = "string"
    )

### Examples

    ## Not run: 
    # The following command removes the role named Test-Role.
    svc$delete_role(
      RoleName = "Test-Role"
    )

    ## End(Not run)
