<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the name and/or the path of the specified IAM user

### Description

Updates the name and/or the path of the specified IAM user.

You should understand the implications of changing an IAM user's path or
name. For more information, see [Renaming an IAM
user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming)
and [Renaming an IAM
group](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html)
in the *IAM User Guide*.

To change a user name, the requester must have appropriate permissions
on both the source object and the target object. For example, to change
Bob to Robert, the entity making the request must have permission on Bob
and Robert, or must have permission on all (\*). For more information
about permissions, see [Permissions and
policies](https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html).

### Usage

    iam_update_user(UserName, NewPath, NewUserName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_update_user_:_UserName">UserName</code></td>
<td><p>[required] Name of the user to update. If you're changing the
name of the user, this is the original user name.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_update_user_:_NewPath">NewPath</code></td>
<td><p>New path for the IAM user. Include this parameter only if you're
changing the user's path.</p>
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
<td><code id="iam_update_user_:_NewUserName">NewUserName</code></td>
<td><p>New name for the user. Include this parameter only if you're
changing the user's name.</p>
<p>IAM user, group, role, and policy names must be unique within the
account. Names are not distinguished by case. For example, you cannot
create resources named both "MyResource" and "myresource".</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_user(
      UserName = "string",
      NewPath = "string",
      NewUserName = "string"
    )

### Examples

    ## Not run: 
    # The following command changes the name of the IAM user Bob to Robert. It
    # does not change the user's path.
    svc$update_user(
      NewUserName = "Robert",
      UserName = "Bob"
    )

    ## End(Not run)
