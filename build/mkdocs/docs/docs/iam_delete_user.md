<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified IAM user

### Description

Deletes the specified IAM user. Unlike the Amazon Web Services
Management Console, when you delete a user programmatically, you must
delete the items attached to the user manually, or the deletion fails.
For more information, see [Deleting an IAM
user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_deleting_cli).
Before attempting to delete a user, remove the following items:

-   Password (`delete_login_profile`)

-   Access keys (`delete_access_key`)

-   Signing certificate (`delete_signing_certificate`)

-   SSH public key (`delete_ssh_public_key`)

-   Git credentials (`delete_service_specific_credential`)

-   Multi-factor authentication (MFA) device (`deactivate_mfa_device`,
    `delete_virtual_mfa_device`)

-   Inline policies (`delete_user_policy`)

-   Attached managed policies (`detach_user_policy`)

-   Group memberships (`remove_user_from_group`)

### Usage

    iam_delete_user(UserName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_delete_user_:_UserName">UserName</code></td>
<td><p>[required] The name of the user to delete.</p>
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

    svc$delete_user(
      UserName = "string"
    )

### Examples

    ## Not run: 
    # The following command removes the IAM user named Bob from the current
    # account.
    svc$delete_user(
      UserName = "Bob"
    )

    ## End(Not run)
