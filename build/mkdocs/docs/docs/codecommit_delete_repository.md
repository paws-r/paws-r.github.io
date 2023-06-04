<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_delete_repository</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a repository

### Description

Deletes a repository. If a specified repository was already deleted, a
null repository ID is returned.

Deleting a repository also deletes all associated objects and metadata.
After a repository is deleted, all future push calls to the deleted
repository fail.

### Usage

    codecommit_delete_repository(repositoryName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_delete_repository_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      repositoryId = "string"
    )

### Request syntax

    svc$delete_repository(
      repositoryName = "string"
    )
