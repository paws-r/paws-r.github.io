<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_reject_shared_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Rejects a directory sharing request that was sent from the directory owner account

### Description

Rejects a directory sharing request that was sent from the directory
owner account.

### Usage

    directoryservice_reject_shared_directory(SharedDirectoryId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_reject_shared_directory_:_SharedDirectoryId">SharedDirectoryId</code></td>
<td><p>[required] Identifier of the shared directory in the directory
consumer account. This identifier is different for each directory owner
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SharedDirectoryId = "string"
    )

### Request syntax

    svc$reject_shared_directory(
      SharedDirectoryId = "string"
    )
