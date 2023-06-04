<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_remove_user_from_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified user from the specified group

### Description

Removes the specified user from the specified group.

### Usage

    iam_remove_user_from_group(GroupName, UserName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="iam_remove_user_from_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group to update.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code
id="iam_remove_user_from_group_:_UserName">UserName</code></td>
<td><p>[required] The name of the user to remove.</p>
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

    svc$remove_user_from_group(
      GroupName = "string",
      UserName = "string"
    )

### Examples

    ## Not run: 
    # The following command removes the user named Bob from the IAM group
    # named Admins.
    svc$remove_user_from_group(
      GroupName = "Admins",
      UserName = "Bob"
    )

    ## End(Not run)
