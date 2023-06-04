<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_enable_ldaps</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Activates the switch for the specific directory to always use LDAP secure calls

### Description

Activates the switch for the specific directory to always use LDAP
secure calls.

### Usage

    directoryservice_enable_ldaps(DirectoryId, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_enable_ldaps_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory.</p></td>
</tr>
<tr class="even">
<td><code id="directoryservice_enable_ldaps_:_Type">Type</code></td>
<td><p>[required] The type of LDAP security to enable. Currently only
the value <code>Client</code> is supported.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$enable_ldaps(
      DirectoryId = "string",
      Type = "Client"
    )
