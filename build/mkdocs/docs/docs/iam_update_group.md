<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_update_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the name and/or the path of the specified IAM group

### Description

Updates the name and/or the path of the specified IAM group.

You should understand the implications of changing a group's path or
name. For more information, see [Renaming users and
groups](https://docs.aws.amazon.com/IAM/latest/UserGuide/id.html) in the
*IAM User Guide*.

The person making the request (the principal), must have permission to
change the role group with the old name and the new name. For example,
to change the group named `Managers` to `MGRs`, the principal must have
a policy that allows them to update both groups. If the principal has
permission to update the `Managers` group, but not the `MGRs` group,
then the update fails. For more information about permissions, see
[Access
management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html).

### Usage

    iam_update_group(GroupName, NewPath, NewGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_update_group_:_GroupName">GroupName</code></td>
<td><p>[required] Name of the IAM group to update. If you're changing
the name of the group, this is the original name.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_update_group_:_NewPath">NewPath</code></td>
<td><p>New path for the IAM group. Only include this if changing the
group's path.</p>
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
<td><code id="iam_update_group_:_NewGroupName">NewGroupName</code></td>
<td><p>New name for the IAM group. Only include this if changing the
group's name.</p>
<p>IAM user, group, role, and policy names must be unique within the
account. Names are not distinguished by case. For example, you cannot
create resources named both "MyResource" and "myresource".</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_group(
      GroupName = "string",
      NewPath = "string",
      NewGroupName = "string"
    )

### Examples

    ## Not run: 
    # The following command changes the name of the IAM group Test to Test-1.
    svc$update_group(
      GroupName = "Test",
      NewGroupName = "Test-1"
    )

    ## End(Not run)
