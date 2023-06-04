<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_delete_global_network</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an existing global network

### Description

Deletes an existing global network. You must first delete all global
network objects (devices, links, and sites), deregister all transit
gateways, and delete any core networks.

### Usage

    networkmanager_delete_global_network(GlobalNetworkId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_delete_global_network_:_GlobalNetworkId">GlobalNetworkId</code></td>
<td><p>[required] The ID of the global network.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GlobalNetwork = list(
        GlobalNetworkId = "string",
        GlobalNetworkArn = "string",
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
    )

### Request syntax

    svc$delete_global_network(
      GlobalNetworkId = "string"
    )
