<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_create_trust</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Directory Service for Microsoft Active Directory allows you to configure trust relationships

### Description

Directory Service for Microsoft Active Directory allows you to configure
trust relationships. For example, you can establish a trust between your
Managed Microsoft AD directory, and your existing self-managed Microsoft
Active Directory. This would allow you to provide users and groups
access to resources in either domain, with a single set of credentials.

This action initiates the creation of the Amazon Web Services side of a
trust relationship between an Managed Microsoft AD directory and an
external domain. You can create either a forest trust or an external
trust.

### Usage

    directoryservice_create_trust(DirectoryId, RemoteDomainName,
      TrustPassword, TrustDirection, TrustType, ConditionalForwarderIpAddrs,
      SelectiveAuth)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_create_trust_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The Directory ID of the Managed Microsoft AD directory
for which to establish the trust relationship.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_create_trust_:_RemoteDomainName">RemoteDomainName</code></td>
<td><p>[required] The Fully Qualified Domain Name (FQDN) of the external
domain for which to create the trust relationship.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_create_trust_:_TrustPassword">TrustPassword</code></td>
<td><p>[required] The trust password. The must be the same password that
was used when creating the trust relationship on the external
domain.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_create_trust_:_TrustDirection">TrustDirection</code></td>
<td><p>[required] The direction of the trust relationship.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_create_trust_:_TrustType">TrustType</code></td>
<td><p>The trust relationship type. <code>Forest</code> is the
default.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_create_trust_:_ConditionalForwarderIpAddrs">ConditionalForwarderIpAddrs</code></td>
<td><p>The IP addresses of the remote DNS server associated with
RemoteDomainName.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_create_trust_:_SelectiveAuth">SelectiveAuth</code></td>
<td><p>Optional parameter to enable selective authentication for the
trust.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TrustId = "string"
    )

### Request syntax

    svc$create_trust(
      DirectoryId = "string",
      RemoteDomainName = "string",
      TrustPassword = "string",
      TrustDirection = "One-Way: Outgoing"|"One-Way: Incoming"|"Two-Way",
      TrustType = "Forest"|"External",
      ConditionalForwarderIpAddrs = list(
        "string"
      ),
      SelectiveAuth = "Enabled"|"Disabled"
    )
