<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_merge_options</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the merge options available for merging two specified branches

### Description

Returns information about the merge options available for merging two
specified branches. For details about why a merge option is not
available, use GetMergeConflicts or DescribeMergeConflicts.

### Usage

    codecommit_get_merge_options(repositoryName, sourceCommitSpecifier,
      destinationCommitSpecifier, conflictDetailLevel,
      conflictResolutionStrategy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_merge_options_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that contains the commits
about which you want to get merge options.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_merge_options_:_sourceCommitSpecifier">sourceCommitSpecifier</code></td>
<td><p>[required] The branch, tag, HEAD, or other fully qualified
reference used to identify a commit (for example, a branch name or a
full commit ID).</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_merge_options_:_destinationCommitSpecifier">destinationCommitSpecifier</code></td>
<td><p>[required] The branch, tag, HEAD, or other fully qualified
reference used to identify a commit (for example, a branch name or a
full commit ID).</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_merge_options_:_conflictDetailLevel">conflictDetailLevel</code></td>
<td><p>The level of conflict detail to use. If unspecified, the default
FILE_LEVEL is used, which returns a not-mergeable result if the same
file has differences in both branches. If LINE_LEVEL is specified, a
conflict is considered not mergeable if the same file in both branches
has differences on the same line.</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_get_merge_options_:_conflictResolutionStrategy">conflictResolutionStrategy</code></td>
<td><p>Specifies which branch to use when resolving conflicts, or
whether to attempt automatically merging two versions of a file. The
default is NONE, which requires any conflicts to be resolved manually
before the merge operation is successful.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      mergeOptions = list(
        "FAST_FORWARD_MERGE"|"SQUASH_MERGE"|"THREE_WAY_MERGE"
      ),
      sourceCommitId = "string",
      destinationCommitId = "string",
      baseCommitId = "string"
    )

### Request syntax

    svc$get_merge_options(
      repositoryName = "string",
      sourceCommitSpecifier = "string",
      destinationCommitSpecifier = "string",
      conflictDetailLevel = "FILE_LEVEL"|"LINE_LEVEL",
      conflictResolutionStrategy = "NONE"|"ACCEPT_SOURCE"|"ACCEPT_DESTINATION"|"AUTOMERGE"
    )
