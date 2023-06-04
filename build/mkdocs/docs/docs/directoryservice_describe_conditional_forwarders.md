<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_conditional_forwarders</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Obtains information about the conditional forwarders for this account

### Description

Obtains information about the conditional forwarders for this account.

If no input parameters are provided for RemoteDomainNames, this request
describes all conditional forwarders for the specified directory ID.

### Usage

    directoryservice_describe_conditional_forwarders(DirectoryId,
      RemoteDomainNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_conditional_forwarders_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The directory ID for which to get the list of
associated conditional forwarders.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_conditional_forwarders_:_RemoteDomainNames">RemoteDomainNames</code></td>
<td><p>The fully qualified domain names (FQDN) of the remote domains for
which to get the list of associated conditional forwarders. If this
member is null, all conditional forwarders are returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConditionalForwarders = list(
        list(
          RemoteDomainName = "string",
          DnsIpAddrs = list(
            "string"
          ),
          ReplicationScope = "Domain"
        )
      )
    )

### Request syntax

    svc$describe_conditional_forwarders(
      DirectoryId = "string",
      RemoteDomainNames = list(
        "string"
      )
    )
