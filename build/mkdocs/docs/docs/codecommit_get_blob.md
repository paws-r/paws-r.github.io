<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit_get_blob</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the base-64 encoded content of an individual blob in a repository

### Description

Returns the base-64 encoded content of an individual blob in a
repository.

### Usage

    codecommit_get_blob(repositoryName, blobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codecommit_get_blob_:_repositoryName">repositoryName</code></td>
<td><p>[required] The name of the repository that contains the
blob.</p></td>
</tr>
<tr class="even">
<td><code id="codecommit_get_blob_:_blobId">blobId</code></td>
<td><p>[required] The ID of the blob, which is its SHA-1
pointer.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      content = raw
    )

### Request syntax

    svc$get_blob(
      repositoryName = "string",
      blobId = "string"
    )
