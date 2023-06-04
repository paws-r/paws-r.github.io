<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_create_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new group

### Description

Creates a new group.

For information about the number of groups you can create, see [IAM and
STS
quotas](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html)
in the *IAM User Guide*.

### Usage

    iam_create_group(Path, GroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_create_group_:_Path">Path</code></td>
<td><p>The path to the group. For more information about paths, see <a
href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
identifiers</a> in the <em>IAM User Guide</em>.</p>
<p>This parameter is optional. If it is not included, it defaults to a
slash (/).</p>
<p>This parameter allows (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters consisting of either a forward slash (/) by itself or a
string that must begin and end with forward slashes. In addition, it can
contain any ASCII character from the ! (<code>U+0021</code>) through the
DEL character (<code style="white-space: pre;">⁠U+007F⁠</code>), including
most punctuation characters, digits, and upper and lowercased
letters.</p></td>
</tr>
<tr class="even">
<td><code id="iam_create_group_:_GroupName">GroupName</code></td>
<td><p>[required] The name of the group to create. Do not include the
path in this value.</p>
<p>IAM user, group, role, and policy names must be unique within the
account. Names are not distinguished by case. For example, you cannot
create resources named both "MyResource" and "myresource".</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Group = list(
        Path = "string",
        GroupName = "string",
        GroupId = "string",
        Arn = "string",
        CreateDate = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_group(
      Path = "string",
      GroupName = "string"
    )

### Examples

    ## Not run: 
    # The following command creates an IAM group named Admins.
    svc$create_group(
      GroupName = "Admins"
    )

    ## End(Not run)
