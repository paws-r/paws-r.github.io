<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_remove_ip_routes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes IP address blocks from a directory

### Description

Removes IP address blocks from a directory.

### Usage

    directoryservice_remove_ip_routes(DirectoryId, CidrIps)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_remove_ip_routes_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] Identifier (ID) of the directory from which you want
to remove the IP addresses.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_remove_ip_routes_:_CidrIps">CidrIps</code></td>
<td><p>[required] IP address blocks that you want to remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$remove_ip_routes(
      DirectoryId = "string",
      CidrIps = list(
        "string"
      )
    )
