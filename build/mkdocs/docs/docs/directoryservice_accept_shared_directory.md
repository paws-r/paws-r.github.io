<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_accept_shared_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Accepts a directory sharing request that was sent from the directory owner account

### Description

Accepts a directory sharing request that was sent from the directory
owner account.

### Usage

    directoryservice_accept_shared_directory(SharedDirectoryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_accept_shared_directory_:_SharedDirectoryId">SharedDirectoryId</code></td>
<td><p>[required] Identifier of the shared directory in the directory
consumer account. This identifier is different for each directory owner
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SharedDirectory = list(
        OwnerAccountId = "string",
        OwnerDirectoryId = "string",
        ShareMethod = "ORGANIZATIONS"|"HANDSHAKE",
        SharedAccountId = "string",
        SharedDirectoryId = "string",
        ShareStatus = "Shared"|"PendingAcceptance"|"Rejected"|"Rejecting"|"RejectFailed"|"Sharing"|"ShareFailed"|"Deleted"|"Deleting",
        ShareNotes = "string",
        CreatedDateTime = as.POSIXct(
          "2015-01-01"
        ),
        LastUpdatedDateTime = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$accept_shared_directory(
      SharedDirectoryId = "string"
    )
