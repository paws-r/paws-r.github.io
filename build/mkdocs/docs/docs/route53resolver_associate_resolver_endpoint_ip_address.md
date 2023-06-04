<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_associate_resolver_endpoint_ip_address</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds IP addresses to an inbound or an outbound Resolver endpoint

### Description

Adds IP addresses to an inbound or an outbound Resolver endpoint. If you
want to add more than one IP address, submit one
`associate_resolver_endpoint_ip_address` request for each IP address.

To remove an IP address from an endpoint, see
`disassociate_resolver_endpoint_ip_address`.

### Usage

    route53resolver_associate_resolver_endpoint_ip_address(
      ResolverEndpointId, IpAddress)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_associate_resolver_endpoint_ip_address_:_ResolverEndpointId">ResolverEndpointId</code></td>
<td><p>[required] The ID of the Resolver endpoint that you want to
associate IP addresses with.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_associate_resolver_endpoint_ip_address_:_IpAddress">IpAddress</code></td>
<td><p>[required] Either the IPv4 address that you want to add to a
Resolver endpoint or a subnet ID. If you specify a subnet ID, Resolver
chooses an IP address for you from the available IPs in the specified
subnet.</p></td>
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

    svc$associate_resolver_endpoint_ip_address(
      ResolverEndpointId = "string",
      IpAddress = list(
        IpId = "string",
        SubnetId = "string",
        Ip = "string",
        Ipv6 = "string"
      )
    )
