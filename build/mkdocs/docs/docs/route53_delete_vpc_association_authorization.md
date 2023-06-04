<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_delete_vpc_association_authorization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes authorization to submit an AssociateVPCWithHostedZone request to associate a specified VPC with a hosted zone that was created by a different account

### Description

Removes authorization to submit an `associate_vpc_with_hosted_zone`
request to associate a specified VPC with a hosted zone that was created
by a different account. You must use the account that created the hosted
zone to submit a `delete_vpc_association_authorization` request.

Sending this request only prevents the Amazon Web Services account that
created the VPC from associating the VPC with the Amazon Route 53 hosted
zone in the future. If the VPC is already associated with the hosted
zone, `delete_vpc_association_authorization` won't disassociate the VPC
from the hosted zone. If you want to delete an existing association, use
`disassociate_vpc_from_hosted_zone`.

### Usage

    route53_delete_vpc_association_authorization(HostedZoneId, VPC)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_delete_vpc_association_authorization_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] When removing authorization to associate a VPC that
was created by one Amazon Web Services account with a hosted zone that
was created with a different Amazon Web Services account, the ID of the
hosted zone.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_delete_vpc_association_authorization_:_VPC">VPC</code></td>
<td><p>[required] When removing authorization to associate a VPC that
was created by one Amazon Web Services account with a hosted zone that
was created with a different Amazon Web Services account, a complex type
that includes the ID and region of the VPC.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_vpc_association_authorization(
      HostedZoneId = "string",
      VPC = list(
        VPCRegion = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"eu-central-2"|"ap-east-1"|"me-south-1"|"us-gov-west-1"|"us-gov-east-1"|"us-iso-east-1"|"us-iso-west-1"|"us-isob-east-1"|"me-central-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-south-1"|"ap-south-2"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"ca-central-1"|"cn-north-1"|"af-south-1"|"eu-south-1"|"eu-south-2"|"ap-southeast-4",
        VPCId = "string"
      )
    )
