<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_update_conditional_forwarder</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a conditional forwarder that has been set up for your Amazon Web Services directory

### Description

Updates a conditional forwarder that has been set up for your Amazon Web
Services directory.

### Usage

    directoryservice_update_conditional_forwarder(DirectoryId,
      RemoteDomainName, DnsIpAddrs)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_update_conditional_forwarder_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The directory ID of the Amazon Web Services directory
for which to update the conditional forwarder.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_update_conditional_forwarder_:_RemoteDomainName">RemoteDomainName</code></td>
<td><p>[required] The fully qualified domain name (FQDN) of the remote
domain with which you will set up a trust relationship.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_update_conditional_forwarder_:_DnsIpAddrs">DnsIpAddrs</code></td>
<td><p>[required] The updated IP addresses of the remote DNS server
associated with the conditional forwarder.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_conditional_forwarder(
      DirectoryId = "string",
      RemoteDomainName = "string",
      DnsIpAddrs = list(
        "string"
      )
    )
