<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>iam_untag_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes the specified tags from the role

### Description

Removes the specified tags from the role. For more information about
tagging, see [Tagging IAM
resources](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html)
in the *IAM User Guide*.

### Usage

    iam_untag_role(RoleName, TagKeys)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="iam_untag_role_:_RoleName">RoleName</code></td>
<td><p>[required] The name of the IAM role from which you want to remove
tags.</p>
<p>This parameter accepts (through its <a
href="https://en.wikipedia.org/wiki/Regex">regex pattern</a>) a string
of characters that consist of upper and lowercase alphanumeric
characters with no spaces. You can also include any of the following
characters: _+=,.@-</p></td>
</tr>
<tr class="even">
<td><code id="iam_untag_role_:_TagKeys">TagKeys</code></td>
<td><p>[required] A list of key names as a simple array of strings. The
tags with matching keys are removed from the specified role.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$untag_role(
      RoleName = "string",
      TagKeys = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example shows how to remove a tag with the key 'Dept' from
    # a role named 'taggedrole'.
    svc$untag_role(
      RoleName = "taggedrole",
      TagKeys = list(
        "Dept"
      )
    )

    ## End(Not run)
