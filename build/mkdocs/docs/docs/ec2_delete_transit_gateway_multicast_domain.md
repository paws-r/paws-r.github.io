<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_delete_transit_gateway_multicast_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified transit gateway multicast domain

### Description

Deletes the specified transit gateway multicast domain.

### Usage

    ec2_delete_transit_gateway_multicast_domain(
      TransitGatewayMulticastDomainId, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ec2_delete_transit_gateway_multicast_domain_:_TransitGatewayMulticastDomainId">TransitGatewayMulticastDomainId</code></td>
<td><p>[required] The ID of the transit gateway multicast
domain.</p></td>
</tr>
<tr class="even">
<td><code
id="ec2_delete_transit_gateway_multicast_domain_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransitGatewayMulticastDomain = list(
        TransitGatewayMulticastDomainId = "string",
        TransitGatewayId = "string",
        TransitGatewayMulticastDomainArn = "string",
        OwnerId = "string",
        Options = list(
          Igmpv2Support = "enable"|"disable",
          StaticSourcesSupport = "enable"|"disable",
          AutoAcceptSharedAssociations = "enable"|"disable"
        ),
        State = "pending"|"available"|"deleting"|"deleted",
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$delete_transit_gateway_multicast_domain(
      TransitGatewayMulticastDomainId = "string",
      DryRun = TRUE|FALSE
    )
