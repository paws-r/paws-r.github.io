<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fsx_disassociate_file_system_aliases</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Use this action to disassociate, or remove, one or more Domain Name Service (DNS) aliases from an Amazon FSx for Windows File Server file system

### Description

Use this action to disassociate, or remove, one or more Domain Name
Service (DNS) aliases from an Amazon FSx for Windows File Server file
system. If you attempt to disassociate a DNS alias that is not
associated with the file system, Amazon FSx responds with a 400 Bad
Request. For more information, see [Working with DNS
Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html).

The system generated response showing the DNS aliases that Amazon FSx is
attempting to disassociate from the file system. Use the API operation
to monitor the status of the aliases Amazon FSx is disassociating with
the file system.

### Usage

    fsx_disassociate_file_system_aliases(ClientRequestToken, FileSystemId,
      Aliases)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="fsx_disassociate_file_system_aliases_:_ClientRequestToken">ClientRequestToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="fsx_disassociate_file_system_aliases_:_FileSystemId">FileSystemId</code></td>
<td><p>[required] Specifies the file system from which to disassociate
the DNS aliases.</p></td>
</tr>
<tr class="odd">
<td><code
id="fsx_disassociate_file_system_aliases_:_Aliases">Aliases</code></td>
<td><p>[required] An array of one or more DNS alias names to
disassociate, or remove, from the file system.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Aliases = list(
        list(
          Name = "string",
          Lifecycle = "AVAILABLE"|"CREATING"|"DELETING"|"CREATE_FAILED"|"DELETE_FAILED"
        )
      )
    )

### Request syntax

    svc$disassociate_file_system_aliases(
      ClientRequestToken = "string",
      FileSystemId = "string",
      Aliases = list(
        "string"
      )
    )
