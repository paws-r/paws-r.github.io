<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_merge_branches_by_fast_forward</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Merges two branches using the fast-forward merge strategy

### Description

Merges two branches using the fast-forward merge strategy.

### Usage

    codecommit_merge_branches_by_fast_forward(repositoryName,
      sourceCommitSpecifier, destinationCommitSpecifier, targetBranch)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_merge_branches_by_fast_forward_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository where you want to merge two
branches.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_branches_by_fast_forward_:_sourceCommitSpecifier">sourceCommitSpecifier</code></td>
<td><p>[required] The branch, tag, HEAD, or other fully qualified
reference used to identify a commit (for example, a branch name or a
full commit ID).</p></td>
</tr>
<tr class="odd">
<td><code
id="codecommit_merge_branches_by_fast_forward_:_destinationCommitSpecifier">destinationCommitSpecifier</code></td>
<td><p>[required] The branch, tag, HEAD, or other fully qualified
reference used to identify a commit (for example, a branch name or a
full commit ID).</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_merge_branches_by_fast_forward_:_targetBranch">targetBranch</code></td>
<td><p>The branch where the merge is applied.</p></td>
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

    svc$merge_branches_by_fast_forward(
      repositoryName = "string",
      sourceCommitSpecifier = "string",
      destinationCommitSpecifier = "string",
      targetBranch = "string"
    )
