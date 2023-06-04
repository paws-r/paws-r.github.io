<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53resolver_create_resolver_endpoint</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Resolver endpoint

### Description

Creates a Resolver endpoint. There are two types of Resolver endpoints,
inbound and outbound:

-   An *inbound Resolver endpoint* forwards DNS queries to the DNS
    service for a VPC from your network.

-   An *outbound Resolver endpoint* forwards DNS queries from the DNS
    service for a VPC to your network.

### Usage

    route53resolver_create_resolver_endpoint(CreatorRequestId, Name,
      SecurityGroupIds, Direction, IpAddresses, Tags, ResolverEndpointType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53resolver_create_resolver_endpoint_:_CreatorRequestId">CreatorRequestId</code></td>
<td><p>[required] A unique string that identifies the request and that
allows failed requests to be retried without the risk of running the
operation twice. <code>CreatorRequestId</code> can be any unique string,
for example, a date/time stamp.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_resolver_endpoint_:_Name">Name</code></td>
<td><p>A friendly name that lets you easily find a configuration in the
Resolver dashboard in the Route 53 console.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_resolver_endpoint_:_SecurityGroupIds">SecurityGroupIds</code></td>
<td><p>[required] The ID of one or more security groups that you want to
use to control access to this VPC. The security group that you specify
must include one or more inbound rules (for inbound Resolver endpoints)
or outbound rules (for outbound Resolver endpoints). Inbound and
outbound rules must allow TCP and UDP access. For inbound access, open
port 53. For outbound access, open the port that you're using for DNS
queries on your network.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_resolver_endpoint_:_Direction">Direction</code></td>
<td><p>[required] Specify the applicable value:</p>
<ul>
<li><p><code>INBOUND</code>: Resolver forwards DNS queries to the DNS
service for a VPC from your network</p></li>
<li><p><code>OUTBOUND</code>: Resolver forwards DNS queries from the DNS
service for a VPC to your network</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_resolver_endpoint_:_IpAddresses">IpAddresses</code></td>
<td><p>[required] The subnets and IP addresses in your VPC that DNS
queries originate from (for outbound endpoints) or that you forward DNS
queries to (for inbound endpoints). The subnet ID uniquely identifies a
VPC.</p></td>
</tr>
<tr class="even">
<td><code
id="route53resolver_create_resolver_endpoint_:_Tags">Tags</code></td>
<td><p>A list of the tag keys and values that you want to associate with
the endpoint.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53resolver_create_resolver_endpoint_:_ResolverEndpointType">ResolverEndpointType</code></td>
<td><p>For the endpoint type you can choose either IPv4, IPv6. or
dual-stack. A dual-stack endpoint means that it will resolve via both
IPv4 and IPv6. This endpoint type is applied to all IP
addresses.</p></td>
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

    svc$create_resolver_endpoint(
      CreatorRequestId = "string",
      Name = "string",
      SecurityGroupIds = list(
        "string"
      ),
      Direction = "INBOUND"|"OUTBOUND",
      IpAddresses = list(
        list(
          SubnetId = "string",
          Ip = "string",
          Ipv6 = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      ResolverEndpointType = "IPV6"|"IPV4"|"DUALSTACK"
    )
