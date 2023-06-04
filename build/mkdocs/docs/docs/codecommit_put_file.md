<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_put_file</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds or updates a file in a branch in an AWS CodeCommit repository, and generates a commit for the addition in the specified branch

### Description

Adds or updates a file in a branch in an AWS CodeCommit repository, and
generates a commit for the addition in the specified branch.

### Usage

    codecommit_put_file(repositoryName, branchName, fileContent, filePath,
      fileMode, parentCommitId, commitMessage, name, email)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_put_file_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where you want to add or
update the file.</p></td>
</tr>
<tr class="even">
<td><code id="codecommit_put_file_:_branchName">branchName</code></td>
<td><p>[required] The name of the branch where you want to add or update
the file. If this is an empty repository, this branch is
created.</p></td>
</tr>
<tr class="odd">
<td><code id="codecommit_put_file_:_fileContent">fileContent</code></td>
<td><p>[required] The content of the file, in binary object
format.</p></td>
</tr>
<tr class="even">
<td><code id="codecommit_put_file_:_filePath">filePath</code></td>
<td><p>[required] The name of the file you want to add or update,
including the relative path to the file in the repository.</p>
<p>If the path does not currently exist in the repository, the path is
created as part of adding the file.</p></td>
</tr>
<tr class="odd">
<td><code id="codecommit_put_file_:_fileMode">fileMode</code></td>
<td><p>The file mode permissions of the blob. Valid file mode
permissions are listed here.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_put_file_:_parentCommitId">parentCommitId</code></td>
<td><p>The full commit ID of the head commit in the branch where you
want to add or update the file. If this is an empty repository, no
commit ID is required. If this is not an empty repository, a commit ID
is required.</p>
<p>The commit ID must match the ID of the head commit at the time of the
operation. Otherwise, an error occurs, and the file is not added or
updated.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_put_file_:_commitMessage">commitMessage</code></td>
<td><p>A message about why this file was added or updated. Although it
is optional, a message makes the commit history for your repository more
useful.</p></td>
</tr>
<tr class="even">
<td><code id="codecommit_put_file_:_name">name</code></td>
<td><p>The name of the person adding or updating the file. Although it
is optional, a name makes the commit history for your repository more
useful.</p></td>
</tr>
<tr class="odd">
<td><code id="codecommit_put_file_:_email">email</code></td>
<td><p>An email address for the person adding or updating the
file.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      commitId = "string",
      blobId = "string",
      treeId = "string"
    )

### Request syntax

    svc$put_file(
      repositoryName = "string",
      branchName = "string",
      fileContent = raw,
      filePath = "string",
      fileMode = "EXECUTABLE"|"NORMAL"|"SYMLINK",
      parentCommitId = "string",
      commitMessage = "string",
      name = "string",
      email = "string"
    )
