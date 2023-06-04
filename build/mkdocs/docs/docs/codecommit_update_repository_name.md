<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_update_repository_name</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Renames a repository

### Description

Renames a repository. The repository name must be unique across the
calling AWS account. Repository names are limited to 100 alphanumeric,
dash, and underscore characters, and cannot include certain characters.
The suffix .git is prohibited. For more information about the limits on
repository names, see
[Limits](https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html)
in the AWS CodeCommit User Guide.

### Usage

    codecommit_update_repository_name(oldName, newName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_update_repository_name_:_oldName">oldName</code></td>
<td><p>[required] The current name of the repository.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_update_repository_name_:_newName">newName</code></td>
<td><p>[required] The new name for the repository.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_repository_name(
      oldName = "string",
      newName = "string"
    )
