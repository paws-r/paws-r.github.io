<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_file</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the base-64 encoded contents of a specified file and its metadata

### Description

Returns the base-64 encoded contents of a specified file and its
metadata.

### Usage

    codecommit_get_file(repositoryName, commitSpecifier, filePath)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_file_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that contains the
file.</p></td>
</tr>
<tr class="even">
<td><code
id="codecommit_get_file_:_commitSpecifier">commitSpecifier</code></td>
<td><p>The fully quaified reference that identifies the commit that
contains the file. For example, you can specify a full commit ID, a tag,
a branch name, or a reference such as refs/heads/master. If none is
provided, the head commit is used.</p></td>
</tr>
<tr class="odd">
<td><code id="codecommit_get_file_:_filePath">filePath</code></td>
<td><p>[required] The fully qualified path to the file, including the
full name and extension of the file. For example, /examples/file.md is
the fully qualified path to a file named file.md in a folder named
examples.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      commitId = "string",
      blobId = "string",
      filePath = "string",
      fileMode = "EXECUTABLE"|"NORMAL"|"SYMLINK",
      fileSize = 123,
      fileContent = raw
    )

### Request syntax

    svc$get_file(
      repositoryName = "string",
      commitSpecifier = "string",
      filePath = "string"
    )
