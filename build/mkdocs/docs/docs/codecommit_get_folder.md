<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_folder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the contents of a specified folder in a repository

### Description

Returns the contents of a specified folder in a repository.

### Usage

    codecommit_get_folder(repositoryName, commitSpecifier, folderPath)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_folder_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_folder_:_commitSpecifier">commitSpecifier</code></td>
<td><p>A fully qualified reference used to identify a commit that
contains the version of the folder's content to return. A fully
qualified reference can be a commit ID, branch name, tag, or reference
such as HEAD. If no specifier is provided, the folder content is
returned as it exists in the HEAD commit.</p></td>
</tr>
<tr class="odd">
<td><code id="codecommit_get_folder_:_folderPath">folderPath</code></td>
<td><p>[required] The fully qualified path to the folder whose contents
are returned, including the folder name. For example, /examples is a
fully-qualified path to a folder named examples that was created off of
the root directory (/) of a repository.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      commitId = "string",
      folderPath = "string",
      treeId = "string",
      subFolders = list(
        list(
          treeId = "string",
          absolutePath = "string",
          relativePath = "string"
        )
      ),
      files = list(
        list(
          blobId = "string",
          absolutePath = "string",
          relativePath = "string",
          fileMode = "EXECUTABLE"|"NORMAL"|"SYMLINK"
        )
      ),
      symbolicLinks = list(
        list(
          blobId = "string",
          absolutePath = "string",
          relativePath = "string",
          fileMode = "EXECUTABLE"|"NORMAL"|"SYMLINK"
        )
      ),
      subModules = list(
        list(
          commitId = "string",
          absolutePath = "string",
          relativePath = "string"
        )
      )
    )

### Request syntax

    svc$get_folder(
      repositoryName = "string",
      commitSpecifier = "string",
      folderPath = "string"
    )
