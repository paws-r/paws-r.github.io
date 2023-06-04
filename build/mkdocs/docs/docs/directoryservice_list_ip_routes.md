<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_list_ip_routes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the address blocks that you have added to a directory

### Description

Lists the address blocks that you have added to a directory.

### Usage

    directoryservice_list_ip_routes(DirectoryId, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_list_ip_routes_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] Identifier (ID) of the directory for which you want to
retrieve the IP addresses.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_list_ip_routes_:_NextToken">NextToken</code></td>
<td><p>The <em>ListIpRoutes.NextToken</em> value from a previous call to
<code>list_ip_routes</code>. Pass null if this is the first
call.</p></td>
</tr>
<tr class="odd">
<td><code id="directoryservice_list_ip_routes_:_Limit">Limit</code></td>
<td><p>Maximum number of items to return. If this value is zero, the
maximum number of items is specified by the limitations of the
operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IpRoutesInfo = list(
        list(
          DirectoryId = "string",
          CidrIp = "string",
          IpRouteStatusMsg = "Adding"|"Added"|"Removing"|"Removed"|"AddFailed"|"RemoveFailed",
          AddedDateTime = as.POSIXct(
            "2015-01-01"
          ),
          IpRouteStatusReason = "string",
          Description = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_ip_routes(
      DirectoryId = "string",
      NextToken = "string",
      Limit = 123
    )
