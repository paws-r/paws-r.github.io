<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_delete_conditional_forwarder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a conditional forwarder that has been set up for your Amazon Web Services directory

### Description

Deletes a conditional forwarder that has been set up for your Amazon Web
Services directory.

### Usage

    directoryservice_delete_conditional_forwarder(DirectoryId,
      RemoteDomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_delete_conditional_forwarder_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The directory ID for which you are deleting the
conditional forwarder.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_delete_conditional_forwarder_:_RemoteDomainName">RemoteDomainName</code></td>
<td><p>[required] The fully qualified domain name (FQDN) of the remote
domain with which you are deleting the conditional forwarder.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_conditional_forwarder(
      DirectoryId = "string",
      RemoteDomainName = "string"
    )
