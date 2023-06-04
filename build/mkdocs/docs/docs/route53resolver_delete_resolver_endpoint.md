<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_delete_resolver_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Resolver endpoint

### Description

Deletes a Resolver endpoint. The effect of deleting a Resolver endpoint
depends on whether it's an inbound or an outbound Resolver endpoint:

-   **Inbound**: DNS queries from your network are no longer routed to
    the DNS service for the specified VPC.

-   **Outbound**: DNS queries from a VPC are no longer routed to your
    network.

### Usage

    route53resolver_delete_resolver_endpoint(ResolverEndpointId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_delete_resolver_endpoint_:_ResolverEndpointId">ResolverEndpointId</code></td>
<td><p>[required] The ID of the Resolver endpoint that you want to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResolverEndpoint = list(
        Id = "string",
        CreatorRequestId = "string",
        Arn = "string",
        Name = "string",
        SecurityGroupIds = list(
          "string"
        ),
        Direction = "INBOUND"|"OUTBOUND",
        IpAddressCount = 123,
        HostVPCId = "string",
        Status = "CREATING"|"OPERATIONAL"|"UPDATING"|"AUTO_RECOVERING"|"ACTION_NEEDED"|"DELETING",
        StatusMessage = "string",
        CreationTime = "string",
        ModificationTime = "string",
        ResolverEndpointType = "IPV6"|"IPV4"|"DUALSTACK"
      )
    )

### Request syntax

    svc$delete_resolver_endpoint(
      ResolverEndpointId = "string"
    )
