<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_disable_client_authentication</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables alternative client authentication methods for the specified directory

### Description

Disables alternative client authentication methods for the specified
directory.

### Usage

    directoryservice_disable_client_authentication(DirectoryId, Type)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_disable_client_authentication_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] The identifier of the directory</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_disable_client_authentication_:_Type">Type</code></td>
<td><p>[required] The type of client authentication to disable.
Currently, only the parameter, <code>SmartCard</code> is
supported.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disable_client_authentication(
      DirectoryId = "string",
      Type = "SmartCard"|"SmartCardOrPassword"
    )
