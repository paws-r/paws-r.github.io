<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkmanager_describe_global_networks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes one or more global networks

### Description

Describes one or more global networks. By default, all global networks
are described. To describe the objects in your global network, you must
use the appropriate `⁠Get*⁠` action. For example, to list the transit
gateways in your global network, use
`get_transit_gateway_registrations`.

### Usage

    networkmanager_describe_global_networks(GlobalNetworkIds, MaxResults,
      NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkmanager_describe_global_networks_:_GlobalNetworkIds">GlobalNetworkIds</code></td>
<td><p>The IDs of one or more global networks. The maximum is
10.</p></td>
</tr>
<tr class="even">
<td><code
id="networkmanager_describe_global_networks_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkmanager_describe_global_networks_:_NextToken">NextToken</code></td>
<td><p>The token for the next page of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GlobalNetworks = list(
        list(
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
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_global_networks(
      GlobalNetworkIds = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
