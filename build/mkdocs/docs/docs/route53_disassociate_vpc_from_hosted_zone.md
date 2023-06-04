<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_disassociate_vpc_from_hosted_zone</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disassociates an Amazon Virtual Private Cloud (Amazon VPC) from an Amazon Route 53 private hosted zone

### Description

Disassociates an Amazon Virtual Private Cloud (Amazon VPC) from an
Amazon Route 53 private hosted zone. Note the following:

-   You can't disassociate the last Amazon VPC from a private hosted
    zone.

-   You can't convert a private hosted zone into a public hosted zone.

-   You can submit a `disassociate_vpc_from_hosted_zone` request using
    either the account that created the hosted zone or the account that
    created the Amazon VPC.

-   Some services, such as Cloud Map and Amazon Elastic File System
    (Amazon EFS) automatically create hosted zones and associate VPCs
    with the hosted zones. A service can create a hosted zone using your
    account or using its own account. You can disassociate a VPC from a
    hosted zone only if the service created the hosted zone using your
    account.

    When you run `disassociate_vpc_from_hosted_zone`, if the hosted zone
    has a value for `OwningAccount`, you can use
    `disassociate_vpc_from_hosted_zone`. If the hosted zone has a value
    for `OwningService`, you can't use
    `disassociate_vpc_from_hosted_zone`.

When revoking access, the hosted zone and the Amazon VPC must belong to
the same partition. A partition is a group of Amazon Web Services
Regions. Each Amazon Web Services account is scoped to one partition.

The following are the supported partitions:

-   `aws` - Amazon Web Services Regions

-   `aws-cn` - China Regions

-   `aws-us-gov` - Amazon Web Services GovCloud (US) Region

For more information, see [Access
Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
in the *Amazon Web Services General Reference*.

### Usage

    route53_disassociate_vpc_from_hosted_zone(HostedZoneId, VPC, Comment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_disassociate_vpc_from_hosted_zone_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] The ID of the private hosted zone that you want to
disassociate a VPC from.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_disassociate_vpc_from_hosted_zone_:_VPC">VPC</code></td>
<td><p>[required] A complex type that contains information about the VPC
that you're disassociating from the specified hosted zone.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_disassociate_vpc_from_hosted_zone_:_Comment">Comment</code></td>
<td><p><em>Optional:</em> A comment about the disassociation
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeInfo = list(
        Id = "string",
        Status = "PENDING"|"INSYNC",
        SubmittedAt = as.POSIXct(
          "2015-01-01"
        ),
        Comment = "string"
      )
    )

### Request syntax

    svc$disassociate_vpc_from_hosted_zone(
      HostedZoneId = "string",
      VPC = list(
        VPCRegion = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"eu-central-2"|"ap-east-1"|"me-south-1"|"us-gov-west-1"|"us-gov-east-1"|"us-iso-east-1"|"us-iso-west-1"|"us-isob-east-1"|"me-central-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-south-1"|"ap-south-2"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"ca-central-1"|"cn-north-1"|"af-south-1"|"eu-south-1"|"eu-south-2"|"ap-southeast-4",
        VPCId = "string"
      ),
      Comment = "string"
    )
