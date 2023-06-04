<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_create_vpc_association_authorization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Authorizes the Amazon Web Services account that created a specified VPC to submit an AssociateVPCWithHostedZone request to associate the VPC with a specified hosted zone that was created by a different account

### Description

Authorizes the Amazon Web Services account that created a specified VPC
to submit an `associate_vpc_with_hosted_zone` request to associate the
VPC with a specified hosted zone that was created by a different
account. To submit a `create_vpc_association_authorization` request, you
must use the account that created the hosted zone. After you authorize
the association, use the account that created the VPC to submit an
`associate_vpc_with_hosted_zone` request.

If you want to associate multiple VPCs that you created by using one
account with a hosted zone that you created by using a different
account, you must submit one authorization request for each VPC.

### Usage

    route53_create_vpc_association_authorization(HostedZoneId, VPC)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_create_vpc_association_authorization_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] The ID of the private hosted zone that you want to
authorize associating a VPC with.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_create_vpc_association_authorization_:_VPC">VPC</code></td>
<td><p>[required] A complex type that contains the VPC ID and region for
the VPC that you want to authorize associating with your hosted
zone.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HostedZoneId = "string",
      VPC = list(
        VPCRegion = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"eu-central-2"|"ap-east-1"|"me-south-1"|"us-gov-west-1"|"us-gov-east-1"|"us-iso-east-1"|"us-iso-west-1"|"us-isob-east-1"|"me-central-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-south-1"|"ap-south-2"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"ca-central-1"|"cn-north-1"|"af-south-1"|"eu-south-1"|"eu-south-2"|"ap-southeast-4",
        VPCId = "string"
      )
    )

### Request syntax

    svc$create_vpc_association_authorization(
      HostedZoneId = "string",
      VPC = list(
        VPCRegion = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"eu-central-2"|"ap-east-1"|"me-south-1"|"us-gov-west-1"|"us-gov-east-1"|"us-iso-east-1"|"us-iso-west-1"|"us-isob-east-1"|"me-central-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-south-1"|"ap-south-2"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"ca-central-1"|"cn-north-1"|"af-south-1"|"eu-south-1"|"eu-south-2"|"ap-southeast-4",
        VPCId = "string"
      )
    )
