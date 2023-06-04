<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_unshare_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stops the directory sharing between the directory owner and consumer accounts

### Description

Stops the directory sharing between the directory owner and consumer
accounts.

### Usage

    directoryservice_unshare_directory(DirectoryId, UnshareTarget)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_unshare_directory_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the Managed Microsoft AD directory
that you want to stop sharing.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_unshare_directory_:_UnshareTarget">UnshareTarget</code></td>
<td><p>[required] Identifier for the directory consumer account with
whom the directory has to be unshared.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SharedDirectoryId = "string"
    )

### Request syntax

    svc$unshare_directory(
      DirectoryId = "string",
      UnshareTarget = list(
        Id = "string",
        Type = "ACCOUNT"
      )
    )
