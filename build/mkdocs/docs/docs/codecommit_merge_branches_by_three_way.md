<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_merge_branches_by_three_way</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Merges two specified branches using the three-way merge strategy

### Description

Merges two specified branches using the three-way merge strategy.

### Usage

    codecommit_merge_branches_by_three_way(repositoryName,
      sourceCommitSpecifier, destinationCommitSpecifier, targetBranch,
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
id="codecommit_merge_branches_by_three_way_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where you want to merge two
branches.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_branches_by_three_way_:_sourceCommitSpecifier">sourceCommitSpecifier</code></td>
<td><p>[required] The branch, tag, HEAD, or other fully qualified
reference used to identify a commit (for example, a branch name or a
full commit ID).</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_merge_branches_by_three_way_:_destinationCommitSpecifier">destinationCommitSpecifier</code></td>
<td><p>[required] The branch, tag, HEAD, or other fully qualified
reference used to identify a commit (for example, a branch name or a
full commit ID).</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_branches_by_three_way_:_targetBranch">targetBranch</code></td>
<td><p>The branch where the merge is applied.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_merge_branches_by_three_way_:_conflictDetailLevel">conflictDetailLevel</code></td>
<td><p>The level of conflict detail to use. If unspecified, the default
FILE_LEVEL is used, which returns a not-mergeable result if the same
file has differences in both branches. If LINE_LEVEL is specified, a
conflict is considered not mergeable if the same file in both branches
has differences on the same line.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_branches_by_three_way_:_conflictResolutionStrategy">conflictResolutionStrategy</code></td>
<td><p>Specifies which branch to use when resolving conflicts, or
whether to attempt automatically merging two versions of a file. The
default is NONE, which requires any conflicts to be resolved manually
before the merge operation is successful.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_merge_branches_by_three_way_:_authorName">authorName</code></td>
<td><p>The name of the author who created the commit. This information
is used as both the author and committer for the commit.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_branches_by_three_way_:_email">email</code></td>
<td><p>The email address of the person merging the branches. This
information is used in the commit information for the merge.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_merge_branches_by_three_way_:_commitMessage">commitMessage</code></td>
<td><p>The commit message to include in the commit information for the
merge.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_branches_by_three_way_:_keepEmptyFolders">keepEmptyFolders</code></td>
<td><p>If the commit contains deletions, whether to keep a folder or
folder structure if the changes leave the folders empty. If true, a
.gitkeep file is created for empty folders. The default is
false.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_merge_branches_by_three_way_:_conflictResolution">conflictResolution</code></td>
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

    svc$merge_branches_by_three_way(
      repositoryName = "string",
      sourceCommitSpecifier = "string",
      destinationCommitSpecifier = "string",
      targetBranch = "string",
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
