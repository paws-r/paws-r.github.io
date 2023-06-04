<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_delete_file</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified file from a specified branch

### Description

Deletes a specified file from a specified branch. A commit is created on
the branch that contains the revision. The file still exists in the
commits earlier to the commit that contains the deletion.

### Usage

    codecommit_delete_file(repositoryName, branchName, filePath,
      parentCommitId, keepEmptyFolders, commitMessage, name, email)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_delete_file_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that contains the file to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_delete_file_:_branchName">branchName</code></td>
<td><p>[required] The name of the branch where the commit that deletes
the file is made.</p></td>
</tr>
<tr class="odd">
<td><code id="codecommit_delete_file_:_filePath">filePath</code></td>
<td><p>[required] The fully qualified path to the file that to be
deleted, including the full name and extension of that file. For
example, /examples/file.md is a fully qualified path to a file named
file.md in a folder named examples.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_delete_file_:_parentCommitId">parentCommitId</code></td>
<td><p>[required] The ID of the commit that is the tip of the branch
where you want to create the commit that deletes the file. This must be
the HEAD commit for the branch. The commit that deletes the file is
created from this commit ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_delete_file_:_keepEmptyFolders">keepEmptyFolders</code></td>
<td><p>If a file is the only object in the folder or directory,
specifies whether to delete the folder or directory that contains the
file. By default, empty folders are deleted. This includes empty folders
that are part of the directory structure. For example, if the path to a
file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting the
last file in dir4 also deletes the empty folders dir4, dir3, and
dir2.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_delete_file_:_commitMessage">commitMessage</code></td>
<td><p>The commit message you want to include as part of deleting the
file. Commit messages are limited to 256 KB. If no message is specified,
a default message is used.</p></td>
</tr>
<tr class="odd">
<td><code id="codecommit_delete_file_:_name">name</code></td>
<td><p>The name of the author of the commit that deletes the file. If no
name is specified, the user's ARN is used as the author name and
committer name.</p></td>
</tr>
<tr class="even">
<td><code id="codecommit_delete_file_:_email">email</code></td>
<td><p>The email address for the commit that deletes the file. If no
email address is specified, the email address is left blank.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      commitId = "string",
      blobId = "string",
      treeId = "string",
      filePath = "string"
    )

### Request syntax

    svc$delete_file(
      repositoryName = "string",
      branchName = "string",
      filePath = "string",
      parentCommitId = "string",
      keepEmptyFolders = TRUE|FALSE,
      commitMessage = "string",
      name = "string",
      email = "string"
    )
