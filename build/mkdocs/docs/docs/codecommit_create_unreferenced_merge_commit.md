<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_create_unreferenced_merge_commit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an unreferenced commit that represents the result of merging two branches using a specified merge strategy

### Description

Creates an unreferenced commit that represents the result of merging two
branches using a specified merge strategy. This can help you determine
the outcome of a potential merge. This API cannot be used with the
fast-forward merge strategy because that strategy does not create a
merge commit.

This unreferenced merge commit can only be accessed using the GetCommit
API or through git commands such as git fetch. To retrieve this commit,
you must specify its commit ID or otherwise reference it.

### Usage

    codecommit_create_unreferenced_merge_commit(repositoryName,
      sourceCommitSpecifier, destinationCommitSpecifier, mergeOption,
      conflictDetailLevel, conflictResolutionStrategy, authorName, email,
      commitMessage, keepEmptyFolders, conflictResolution)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_create_unreferenced_merge_commit_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where you want to create
the unreferenced merge commit.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_unreferenced_merge_commit_:_sourceCommitSpecifier">sourceCommitSpecifier</code></td>
<td><p>[required] The branch, tag, HEAD, or other fully qualified
reference used to identify a commit (for example, a branch name or a
full commit ID).</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_create_unreferenced_merge_commit_:_destinationCommitSpecifier">destinationCommitSpecifier</code></td>
<td><p>[required] The branch, tag, HEAD, or other fully qualified
reference used to identify a commit (for example, a branch name or a
full commit ID).</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_unreferenced_merge_commit_:_mergeOption">mergeOption</code></td>
<td><p>[required] The merge option or strategy you want to use to merge
the code.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_create_unreferenced_merge_commit_:_conflictDetailLevel">conflictDetailLevel</code></td>
<td><p>The level of conflict detail to use. If unspecified, the default
FILE_LEVEL is used, which returns a not-mergeable result if the same
file has differences in both branches. If LINE_LEVEL is specified, a
conflict is considered not mergeable if the same file in both branches
has differences on the same line.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_unreferenced_merge_commit_:_conflictResolutionStrategy">conflictResolutionStrategy</code></td>
<td><p>Specifies which branch to use when resolving conflicts, or
whether to attempt automatically merging two versions of a file. The
default is NONE, which requires any conflicts to be resolved manually
before the merge operation is successful.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_create_unreferenced_merge_commit_:_authorName">authorName</code></td>
<td><p>The name of the author who created the unreferenced commit. This
information is used as both the author and committer for the
commit.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_unreferenced_merge_commit_:_email">email</code></td>
<td><p>The email address for the person who created the unreferenced
commit.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_create_unreferenced_merge_commit_:_commitMessage">commitMessage</code></td>
<td><p>The commit message for the unreferenced commit.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_create_unreferenced_merge_commit_:_keepEmptyFolders">keepEmptyFolders</code></td>
<td><p>If the commit contains deletions, whether to keep a folder or
folder structure if the changes leave the folders empty. If this is
specified as true, a .gitkeep file is created for empty folders. The
default is false.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_create_unreferenced_merge_commit_:_conflictResolution">conflictResolution</code></td>
<td><p>If AUTOMERGE is the conflict resolution strategy, a list of
inputs to use when resolving conflicts during a merge.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      commitId = "string",
      treeId = "string"
    )

### Request syntax

    svc$create_unreferenced_merge_commit(
      repositoryName = "string",
      sourceCommitSpecifier = "string",
      destinationCommitSpecifier = "string",
      mergeOption = "FAST_FORWARD_MERGE"|"SQUASH_MERGE"|"THREE_WAY_MERGE",
      conflictDetailLevel = "FILE_LEVEL"|"LINE_LEVEL",
      conflictResolutionStrategy = "NONE"|"ACCEPT_SOURCE"|"ACCEPT_DESTINATION"|"AUTOMERGE",
      authorName = "string",
      email = "string",
      commitMessage = "string",
      keepEmptyFolders = TRUE|FALSE,
      conflictResolution = list(
        replaceContents = list(
          list(
            filePath = "string",
            replacementType = "KEEP_BASE"|"KEEP_SOURCE"|"KEEP_DESTINATION"|"USE_NEW_CONTENT",
            content = raw,
            fileMode = "EXECUTABLE"|"NORMAL"|"SYMLINK"
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
    )
