<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_disable_ldaps</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deactivates LDAP secure calls for the specified directory

### Description

Deactivates LDAP secure calls for the specified directory.

### Usage

    directoryservice_disable_ldaps(DirectoryId, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_disable_ldaps_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code id="directoryservice_disable_ldaps_:_Type">Type</code></td>
<td><p>[required] The type of LDAP security to enable. Currently only
the value <code>Client</code> is supported.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_ldaps(
      DirectoryId = "string",
      Type = "Client"
    )
