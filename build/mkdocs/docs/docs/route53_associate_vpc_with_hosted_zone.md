<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_associate_vpc_with_hosted_zone</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an Amazon VPC with a private hosted zone

### Description

Associates an Amazon VPC with a private hosted zone.

To perform the association, the VPC and the private hosted zone must
already exist. You can't convert a public hosted zone into a private
hosted zone.

If you want to associate a VPC that was created by using one Amazon Web
Services account with a private hosted zone that was created by using a
different account, the Amazon Web Services account that created the
private hosted zone must first submit a
`create_vpc_association_authorization` request. Then the account that
created the VPC must submit an `associate_vpc_with_hosted_zone` request.

When granting access, the hosted zone and the Amazon VPC must belong to
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

    route53_associate_vpc_with_hosted_zone(HostedZoneId, VPC, Comment)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_associate_vpc_with_hosted_zone_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] The ID of the private hosted zone that you want to
associate an Amazon VPC with.</p>
<p>Note that you can't associate a VPC with a hosted zone that doesn't
have an existing VPC association.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_associate_vpc_with_hosted_zone_:_VPC">VPC</code></td>
<td><p>[required] A complex type that contains information about the VPC
that you want to associate with a private hosted zone.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_associate_vpc_with_hosted_zone_:_Comment">Comment</code></td>
<td><p><em>Optional:</em> A comment about the association
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

    svc$associate_vpc_with_hosted_zone(
      HostedZoneId = "string",
      VPC = list(
        VPCRegion = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"eu-central-2"|"ap-east-1"|"me-south-1"|"us-gov-west-1"|"us-gov-east-1"|"us-iso-east-1"|"us-iso-west-1"|"us-isob-east-1"|"me-central-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-south-1"|"ap-south-2"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"ca-central-1"|"cn-north-1"|"af-south-1"|"eu-south-1"|"eu-south-2"|"ap-southeast-4",
        VPCId = "string"
      ),
      Comment = "string"
    )

### Examples

    ## Not run: 
    # The following example associates the VPC with ID vpc-1a2b3c4d with the
    # hosted zone with ID Z3M3LMPEXAMPLE.
    svc$associate_vpc_with_hosted_zone(
      Comment = "",
      HostedZoneId = "Z3M3LMPEXAMPLE",
      VPC = list(
        VPCId = "vpc-1a2b3c4d",
        VPCRegion = "us-east-2"
      )
    )

    ## End(Not run)
