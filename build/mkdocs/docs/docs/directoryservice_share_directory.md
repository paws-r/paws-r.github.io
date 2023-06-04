<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_share_directory</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Shares a specified directory (DirectoryId) in your Amazon Web Services account (directory owner) with another Amazon Web Services account (directory consumer)

### Description

Shares a specified directory (`DirectoryId`) in your Amazon Web Services
account (directory owner) with another Amazon Web Services account
(directory consumer). With this operation you can use your directory
from any Amazon Web Services account and from any Amazon VPC within an
Amazon Web Services Region.

When you share your Managed Microsoft AD directory, Directory Service
creates a shared directory in the directory consumer account. This
shared directory contains the metadata to provide access to the
directory within the directory owner account. The shared directory is
visible in all VPCs in the directory consumer account.

The `ShareMethod` parameter determines whether the specified directory
can be shared between Amazon Web Services accounts inside the same
Amazon Web Services organization (`ORGANIZATIONS`). It also determines
whether you can share the directory with any other Amazon Web Services
account either inside or outside of the organization (`HANDSHAKE`).

The `ShareNotes` parameter is only used when `HANDSHAKE` is called,
which sends a directory sharing request to the directory consumer.

### Usage

    directoryservice_share_directory(DirectoryId, ShareNotes, ShareTarget,
      ShareMethod)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_share_directory_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] Identifier of the Managed Microsoft AD directory that
you want to share with other Amazon Web Services accounts.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_share_directory_:_ShareNotes">ShareNotes</code></td>
<td><p>A directory share request that is sent by the directory owner to
the directory consumer. The request includes a typed message to help the
directory consumer administrator determine whether to approve or reject
the share invitation.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_share_directory_:_ShareTarget">ShareTarget</code></td>
<td><p>[required] Identifier for the directory consumer account with
whom the directory is to be shared.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_share_directory_:_ShareMethod">ShareMethod</code></td>
<td><p>[required] The method used when sharing a directory to determine
whether the directory should be shared within your Amazon Web Services
organization (<code>ORGANIZATIONS</code>) or with any Amazon Web
Services account by sending a directory sharing request
(<code>HANDSHAKE</code>).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SharedDirectoryId = "string"
    )

### Request syntax

    svc$share_directory(
      DirectoryId = "string",
      ShareNotes = "string",
      ShareTarget = list(
        Id = "string",
        Type = "ACCOUNT"
      ),
      ShareMethod = "ORGANIZATIONS"|"HANDSHAKE"
    )
