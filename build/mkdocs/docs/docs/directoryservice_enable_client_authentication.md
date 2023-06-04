<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_enable_client_authentication</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables alternative client authentication methods for the specified directory

### Description

Enables alternative client authentication methods for the specified
directory.

### Usage

    directoryservice_enable_client_authentication(DirectoryId, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_enable_client_authentication_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the specified directory.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_enable_client_authentication_:_Type">Type</code></td>
<td><p>[required] The type of client authentication to enable. Currently
only the value <code>SmartCard</code> is supported. Smart card
authentication in AD Connector requires that you enable Kerberos
Constrained Delegation for the Service User to the LDAP service in your
self-managed AD.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_client_authentication(
      DirectoryId = "string",
      Type = "SmartCard"|"SmartCardOrPassword"
    )
