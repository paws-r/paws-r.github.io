<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_vpc_association_authorizations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets a list of the VPCs that were created by other accounts and that can be associated with a specified hosted zone because you've submitted one or more CreateVPCAssociationAuthorization requests

### Description

Gets a list of the VPCs that were created by other accounts and that can
be associated with a specified hosted zone because you've submitted one
or more `create_vpc_association_authorization` requests.

The response includes a `VPCs` element with a `VPC` child element for
each VPC that can be associated with the hosted zone.

### Usage

    route53_list_vpc_association_authorizations(HostedZoneId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_vpc_association_authorizations_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] The ID of the hosted zone for which you want a list of
VPCs that can be associated with the hosted zone.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_vpc_association_authorizations_:_NextToken">NextToken</code></td>
<td><p><em>Optional</em>: If a response includes a
<code>NextToken</code> element, there are more VPCs that can be
associated with the specified hosted zone. To get the next page of
results, submit another request, and include the value of
<code>NextToken</code> from the response in the <code>nexttoken</code>
parameter in another <code>list_vpc_association_authorizations</code>
request.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_vpc_association_authorizations_:_MaxResults">MaxResults</code></td>
<td><p><em>Optional</em>: An integer that specifies the maximum number
of VPCs that you want Amazon Route 53 to return. If you don't specify a
value for <code>MaxResults</code>, Route 53 returns up to 50 VPCs per
page.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HostedZoneId = "string",
      NextToken = "string",
      VPCs = list(
        list(
          VPCRegion = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"eu-central-2"|"ap-east-1"|"me-south-1"|"us-gov-west-1"|"us-gov-east-1"|"us-iso-east-1"|"us-iso-west-1"|"us-isob-east-1"|"me-central-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-south-1"|"ap-south-2"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"ca-central-1"|"cn-north-1"|"af-south-1"|"eu-south-1"|"eu-south-2"|"ap-southeast-4",
          VPCId = "string"
        )
      )
    )

### Request syntax

    svc$list_vpc_association_authorizations(
      HostedZoneId = "string",
      NextToken = "string",
      MaxResults = "string"
    )
