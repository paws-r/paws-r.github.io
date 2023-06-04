<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_add_user_to_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified user to the specified group

### Description

Adds the specified user to the specified group.

### Usage

    iam_add_user_to_group(GroupName, UserName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_add_user_to_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group to update.</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of upper and lowercase alphanumeric characters
with no spaces. You can also include any of the following characters:
_+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_add_user_to_group_:_UserName">UserName</code></td>
<td><p>[required] The name of the user to add.</p>
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

    svc$add_user_to_group(
      GroupName = "string",
      UserName = "string"
    )

### Examples

    ## Not run: 
    # The following command adds an IAM user named Bob to the IAM group named
    # Admins:
    svc$add_user_to_group(
      GroupName = "Admins",
      UserName = "Bob"
    )

    ## End(Not run)
