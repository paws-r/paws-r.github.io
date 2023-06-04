<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_delete_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified IAM group

### Description

Deletes the specified IAM group. The group must not contain any users or
have any attached policies.

### Usage

    iam_delete_group(GroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_delete_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the IAM group to delete.</p>
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

    svc$delete_group(
      GroupName = "string"
    )
