<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_create_hosted_zone</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new public or private hosted zone

### Description

Creates a new public or private hosted zone. You create records in a
public hosted zone to define how you want to route traffic on the
internet for a domain, such as example.com, and its subdomains
(apex.example.com, acme.example.com). You create records in a private
hosted zone to define how you want to route traffic for a domain and its
subdomains within one or more Amazon Virtual Private Clouds (Amazon
VPCs).

You can't convert a public hosted zone to a private hosted zone or vice
versa. Instead, you must create a new hosted zone with the same name and
create new resource record sets.

For more information about charges for hosted zones, see [Amazon
Route 53 Pricing](https://aws.amazon.com/route53/pricing/).

Note the following:

-   You can't create a hosted zone for a top-level domain (TLD) such as
    .com.

-   For public hosted zones, Route 53 automatically creates a default
    SOA record and four NS records for the zone. For more information
    about SOA and NS records, see [NS and SOA Records that Route 53
    Creates for a Hosted
    Zone](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/SOA-NSrecords.html)
    in the *Amazon Route 53 Developer Guide*.

    If you want to use the same name servers for multiple public hosted
    zones, you can optionally associate a reusable delegation set with
    the hosted zone. See the `DelegationSetId` element.

-   If your domain is registered with a registrar other than Route 53,
    you must update the name servers with your registrar to make Route
    53 the DNS service for the domain. For more information, see
    [Migrating DNS Service for an Existing Domain to Amazon
    Route 53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/MigratingDNS.html)
    in the *Amazon Route 53 Developer Guide*.

When you submit a `create_hosted_zone` request, the initial status of
the hosted zone is `PENDING`. For public hosted zones, this means that
the NS and SOA records are not yet available on all Route 53 DNS
servers. When the NS and SOA records are available, the status of the
zone changes to `INSYNC`.

The `create_hosted_zone` request requires the caller to have an
`ec2:DescribeVpcs` permission.

When creating private hosted zones, the Amazon VPC must belong to the
same partition where the hosted zone is created. A partition is a group
of Amazon Web Services Regions. Each Amazon Web Services account is
scoped to one partition.

The following are the supported partitions:

-   `aws` - Amazon Web Services Regions

-   `aws-cn` - China Regions

-   `aws-us-gov` - Amazon Web Services GovCloud (US) Region

For more information, see [Access
Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
in the *Amazon Web Services General Reference*.

### Usage

    route53_create_hosted_zone(Name, VPC, CallerReference, HostedZoneConfig,
      DelegationSetId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_create_hosted_zone_:_Name">Name</code></td>
<td><p>[required] The name of the domain. Specify a fully qualified
domain name, for example, <em>www.example.com</em>. The trailing dot is
optional; Amazon Route 53 assumes that the domain name is fully
qualified. This means that Route 53 treats <em>www.example.com</em>
(without a trailing dot) and <em>www.example.com.</em> (with a trailing
dot) as identical.</p>
<p>If you're creating a public hosted zone, this is the name you have
registered with your DNS registrar. If your domain name is registered
with a registrar other than Route 53, change the name servers for your
domain to the set of <code>NameServers</code> that
<code>create_hosted_zone</code> returns in
<code>DelegationSet</code>.</p></td>
</tr>
<tr class="even">
<td><code id="route53_create_hosted_zone_:_VPC">VPC</code></td>
<td><p>(Private hosted zones only) A complex type that contains
information about the Amazon VPC that you're associating with this
hosted zone.</p>
<p>You can specify only one Amazon VPC when you create a private hosted
zone. If you are associating a VPC with a hosted zone with this request,
the paramaters <code>VPCId</code> and <code>VPCRegion</code> are also
required.</p>
<p>To associate additional Amazon VPCs with the hosted zone, use
<code>associate_vpc_with_hosted_zone</code> after you create a hosted
zone.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_create_hosted_zone_:_CallerReference">CallerReference</code></td>
<td><p>[required] A unique string that identifies the request and that
allows failed <code>create_hosted_zone</code> requests to be retried
without the risk of executing the operation twice. You must use a unique
<code>CallerReference</code> string every time you submit a
<code>create_hosted_zone</code> request. <code>CallerReference</code>
can be any unique string, for example, a date/time stamp.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_create_hosted_zone_:_HostedZoneConfig">HostedZoneConfig</code></td>
<td><p>(Optional) A complex type that contains the following optional
values:</p>
<ul>
<li><p>For public and private hosted zones, an optional comment</p></li>
<li><p>For private hosted zones, an optional <code>PrivateZone</code>
element</p></li>
</ul>
<p>If you don't specify a comment or the <code>PrivateZone</code>
element, omit <code>HostedZoneConfig</code> and the other
elements.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_create_hosted_zone_:_DelegationSetId">DelegationSetId</code></td>
<td><p>If you want to associate a reusable delegation set with this
hosted zone, the ID that Amazon Route 53 assigned to the reusable
delegation set when you created it. For more information about reusable
delegation sets, see
<code>create_reusable_delegation_set</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HostedZone = list(
        Id = "string",
        Name = "string",
        CallerReference = "string",
        Config = list(
          Comment = "string",
          PrivateZone = TRUE|FALSE
        ),
        ResourceRecordSetCount = 123,
        LinkedService = list(
          ServicePrincipal = "string",
          Description = "string"
        )
      ),
      ChangeInfo = list(
        Id = "string",
        Status = "PENDING"|"INSYNC",
        SubmittedAt = as.POSIXct(
          "2015-01-01"
        ),
        Comment = "string"
      ),
      DelegationSet = list(
        Id = "string",
        CallerReference = "string",
        NameServers = list(
          "string"
        )
      ),
      VPC = list(
        VPCRegion = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"eu-central-2"|"ap-east-1"|"me-south-1"|"us-gov-west-1"|"us-gov-east-1"|"us-iso-east-1"|"us-iso-west-1"|"us-isob-east-1"|"me-central-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-south-1"|"ap-south-2"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"ca-central-1"|"cn-north-1"|"af-south-1"|"eu-south-1"|"eu-south-2"|"ap-southeast-4",
        VPCId = "string"
      ),
      Location = "string"
    )

### Request syntax

    svc$create_hosted_zone(
      Name = "string",
      VPC = list(
        VPCRegion = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"eu-central-2"|"ap-east-1"|"me-south-1"|"us-gov-west-1"|"us-gov-east-1"|"us-iso-east-1"|"us-iso-west-1"|"us-isob-east-1"|"me-central-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-south-1"|"ap-south-2"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"ca-central-1"|"cn-north-1"|"af-south-1"|"eu-south-1"|"eu-south-2"|"ap-southeast-4",
        VPCId = "string"
      ),
      CallerReference = "string",
      HostedZoneConfig = list(
        Comment = "string",
        PrivateZone = TRUE|FALSE
      ),
      DelegationSetId = "string"
    )
