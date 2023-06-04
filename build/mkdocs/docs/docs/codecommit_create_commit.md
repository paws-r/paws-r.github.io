<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_create_commit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a commit for a repository on the tip of a specified branch

### Description

Creates a commit for a repository on the tip of a specified branch.

### Usage

    codecommit_create_commit(repositoryName, branchName, parentCommitId,
      authorName, email, commitMessage, keepEmptyFolders, putFiles,
      deleteFiles, setFileModes)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_create_commit_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where you create the
commit.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_commit_:_branchName">branchName</code></td>
<td><p>[required] The name of the branch where you create the
commit.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_create_commit_:_parentCommitId">parentCommitId</code></td>
<td><p>The ID of the commit that is the parent of the commit you create.
Not required if this is an empty repository.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_commit_:_authorName">authorName</code></td>
<td><p>The name of the author who created the commit. This information
is used as both the author and committer for the commit.</p></td>
</tr>
<tr class="odd">
<td><code id="codecommit_create_commit_:_email">email</code></td>
<td><p>The email address of the person who created the commit.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_commit_:_commitMessage">commitMessage</code></td>
<td><p>The commit message you want to include in the commit. Commit
messages are limited to 256 KB. If no message is specified, a default
message is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_create_commit_:_keepEmptyFolders">keepEmptyFolders</code></td>
<td><p>If the commit contains deletions, whether to keep a folder or
folder structure if the changes leave the folders empty. If true, a
..gitkeep file is created for empty folders. The default is
false.</p></td>
</tr>
<tr class="even">
<td><code id="codecommit_create_commit_:_putFiles">putFiles</code></td>
<td><p>The files to add or update in this commit.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_create_commit_:_deleteFiles">deleteFiles</code></td>
<td><p>The files to delete in this commit. These files still exist in
earlier commits.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_commit_:_setFileModes">setFileModes</code></td>
<td><p>The file modes to update for files in this commit.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      commitId = "string",
      treeId = "string",
      filesAdded = list(
        list(
          absolutePath = "string",
          blobId = "string",
          fileMode = "EXECUTABLE"|"NORMAL"|"SYMLINK"
        )
      ),
      filesUpdated = list(
        list(
          absolutePath = "string",
          blobId = "string",
          fileMode = "EXECUTABLE"|"NORMAL"|"SYMLINK"
        )
      ),
      filesDeleted = list(
        list(
          absolutePath = "string",
          blobId = "string",
          fileMode = "EXECUTABLE"|"NORMAL"|"SYMLINK"
        )
      )
    )

### Request syntax

    svc$create_commit(
      repositoryName = "string",
      branchName = "string",
      parentCommitId = "string",
      authorName = "string",
      email = "string",
      commitMessage = "string",
      keepEmptyFolders = TRUE|FALSE,
      putFiles = list(
        list(
          filePath = "string",
          fileMode = "EXECUTABLE"|"NORMAL"|"SYMLINK",
          fileContent = raw,
          sourceFile = list(
            filePath = "string",
            isMove = TRUE|FALSE
          )
        )
      ),
      deleteFiles = list(
        list(
          filePath = "string"
        )
      ),
      setFileModes = list(
        list(
          filePath = "string",
          fileMode = "EXECUTABLE"|"NORMAL"|"SYMLINK"
        )
      )
    )
