<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_get_connections</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about one or more of your connections in a global network

### Description

Gets information about one or more of your connections in a global
network.

### Usage

    networkmanager_get_connections(GlobalNetworkId, ConnectionIds, DeviceId,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_get_connections_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_connections_:_ConnectionIds">ConnectionIds</code></td>
<td><p>One or more connection IDs.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_connections_:_DeviceId">DeviceId</code></td>
<td><p>The ID of the device.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_get_connections_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_get_connections_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Connections = list(
        list(
          ConnectionId = "string",
          ConnectionArn = "string",
          GlobalNetworkId = "string",
          DeviceId = "string",
          ConnectedDeviceId = "string",
          LinkId = "string",
          ConnectedLinkId = "string",
          Description = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          State = "PENDING"|"AVAILABLE"|"DELETING"|"UPDATING",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_connections(
      GlobalNetworkId = "string",
      ConnectionIds = list(
        "string"
      ),
      DeviceId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
