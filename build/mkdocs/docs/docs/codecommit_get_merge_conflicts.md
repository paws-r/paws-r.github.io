<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_merge_conflicts</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository

### Description

Returns information about merge conflicts between the before and after
commit IDs for a pull request in a repository.

### Usage

    codecommit_get_merge_conflicts(repositoryName,
      destinationCommitSpecifier, sourceCommitSpecifier, mergeOption,
      conflictDetailLevel, maxConflictFiles, conflictResolutionStrategy,
      nextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_merge_conflicts_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where the pull request was
created.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_merge_conflicts_:_destinationCommitSpecifier">destinationCommitSpecifier</code></td>
<td><p>[required] The branch, tag, HEAD, or other fully qualified
reference used to identify a commit (for example, a branch name or a
full commit ID).</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_merge_conflicts_:_sourceCommitSpecifier">sourceCommitSpecifier</code></td>
<td><p>[required] The branch, tag, HEAD, or other fully qualified
reference used to identify a commit (for example, a branch name or a
full commit ID).</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_merge_conflicts_:_mergeOption">mergeOption</code></td>
<td><p>[required] The merge option or strategy you want to use to merge
the code.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_merge_conflicts_:_conflictDetailLevel">conflictDetailLevel</code></td>
<td><p>The level of conflict detail to use. If unspecified, the default
FILE_LEVEL is used, which returns a not-mergeable result if the same
file has differences in both branches. If LINE_LEVEL is specified, a
conflict is considered not mergeable if the same file in both branches
has differences on the same line.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_merge_conflicts_:_maxConflictFiles">maxConflictFiles</code></td>
<td><p>The maximum number of files to include in the output.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_merge_conflicts_:_conflictResolutionStrategy">conflictResolutionStrategy</code></td>
<td><p>Specifies which branch to use when resolving conflicts, or
whether to attempt automatically merging two versions of a file. The
default is NONE, which requires any conflicts to be resolved manually
before the merge operation is successful.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_merge_conflicts_:_nextToken">nextToken</code></td>
<td><p>An enumeration token that, when provided in a request, returns
the next batch of the results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      mergeable = TRUE|FALSE,
      destinationCommitId = "string",
      sourceCommitId = "string",
      baseCommitId = "string",
      conflictMetadataList = list(
        list(
          filePath = "string",
          fileSizes = list(
            source = 123,
            destination = 123,
            base = 123
          ),
          fileModes = list(
            source = "EXECUTABLE"|"NORMAL"|"SYMLINK",
            destination = "EXECUTABLE"|"NORMAL"|"SYMLINK",
            base = "EXECUTABLE"|"NORMAL"|"SYMLINK"
          ),
          objectTypes = list(
            source = "FILE"|"DIRECTORY"|"GIT_LINK"|"SYMBOLIC_LINK",
            destination = "FILE"|"DIRECTORY"|"GIT_LINK"|"SYMBOLIC_LINK",
            base = "FILE"|"DIRECTORY"|"GIT_LINK"|"SYMBOLIC_LINK"
          ),
          numberOfConflicts = 123,
          isBinaryFile = list(
            source = TRUE|FALSE,
            destination = TRUE|FALSE,
            base = TRUE|FALSE
          ),
          contentConflict = TRUE|FALSE,
          fileModeConflict = TRUE|FALSE,
          objectTypeConflict = TRUE|FALSE,
          mergeOperations = list(
            source = "A"|"M"|"D",
            destination = "A"|"M"|"D"
          )
        )
      ),
      nextToken = "string"
    )

### Request syntax

    svc$get_merge_conflicts(
      repositoryName = "string",
      destinationCommitSpecifier = "string",
      sourceCommitSpecifier = "string",
      mergeOption = "FAST_FORWARD_MERGE"|"SQUASH_MERGE"|"THREE_WAY_MERGE",
      conflictDetailLevel = "FILE_LEVEL"|"LINE_LEVEL",
      maxConflictFiles = 123,
      conflictResolutionStrategy = "NONE"|"ACCEPT_SOURCE"|"ACCEPT_DESTINATION"|"AUTOMERGE",
      nextToken = "string"
    )
