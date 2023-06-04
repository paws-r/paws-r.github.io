<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_update_resolver_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the name, or enpoint type for an inbound or an outbound Resolver endpoint

### Description

Updates the name, or enpoint type for an inbound or an outbound Resolver
endpoint. You can only update between IPV4 and DUALSTACK, IPV6 endpoint
type can't be updated to other type.

### Usage

    route53resolver_update_resolver_endpoint(ResolverEndpointId, Name,
      ResolverEndpointType, UpdateIpAddresses)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_update_resolver_endpoint_:_ResolverEndpointId">ResolverEndpointId</code></td>
<td><p>[required] The ID of the Resolver endpoint that you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_resolver_endpoint_:_Name">Name</code></td>
<td><p>The name of the Resolver endpoint that you want to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_update_resolver_endpoint_:_ResolverEndpointType">ResolverEndpointType</code></td>
<td><p>Specifies the endpoint type for what type of IP address the
endpoint uses to forward DNS queries.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_update_resolver_endpoint_:_UpdateIpAddresses">UpdateIpAddresses</code></td>
<td><p>Updates the Resolver endpoint type to IpV4, Ipv6, or
dual-stack.</p></td>
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

    svc$update_resolver_endpoint(
      ResolverEndpointId = "string",
      Name = "string",
      ResolverEndpointType = "IPV6"|"IPV4"|"DUALSTACK",
      UpdateIpAddresses = list(
        list(
          IpId = "string",
          Ipv6 = "string"
        )
      )
    )
