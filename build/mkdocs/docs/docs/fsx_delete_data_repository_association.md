<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_delete_data_repository_association</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a data repository association on an Amazon FSx for Lustre file system

### Description

Deletes a data repository association on an Amazon FSx for Lustre file
system. Deleting the data repository association unlinks the file system
from the Amazon S3 bucket. When deleting a data repository association,
you have the option of deleting the data in the file system that
corresponds to the data repository association. Data repository
associations are supported for all file systems except for `Scratch_1`
deployment type.

### Usage

    fsx_delete_data_repository_association(AssociationId,
      ClientRequestToken, DeleteDataInFileSystem)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_delete_data_repository_association_:_AssociationId">AssociationId</code></td>
<td><p>[required] The ID of the data repository association that you
want to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="fsx_delete_data_repository_association_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="fsx_delete_data_repository_association_:_DeleteDataInFileSystem">DeleteDataInFileSystem</code></td>
<td><p>Set to <code>true</code> to delete the data in the file system
that corresponds to the data repository association.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssociationId = "string",
      Lifecycle = "CREATING"|"AVAILABLE"|"MISCONFIGURED"|"UPDATING"|"DELETING"|"FAILED",
      DeleteDataInFileSystem = TRUE|FALSE
    )

### Request syntax

    svc$delete_data_repository_association(
      AssociationId = "string",
      ClientRequestToken = "string",
      DeleteDataInFileSystem = TRUE|FALSE
    )
