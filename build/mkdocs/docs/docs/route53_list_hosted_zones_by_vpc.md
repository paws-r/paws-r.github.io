<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_list_hosted_zones_by_vpc</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all the private hosted zones that a specified VPC is associated with, regardless of which Amazon Web Services account or Amazon Web Services service owns the hosted zones

### Description

Lists all the private hosted zones that a specified VPC is associated
with, regardless of which Amazon Web Services account or Amazon Web
Services service owns the hosted zones. The `HostedZoneOwner` structure
in the response contains one of the following values:

-   An `OwningAccount` element, which contains the account number of
    either the current Amazon Web Services account or another Amazon Web
    Services account. Some services, such as Cloud Map, create hosted
    zones using the current account.

-   An `OwningService` element, which identifies the Amazon Web Services
    service that created and owns the hosted zone. For example, if a
    hosted zone was created by Amazon Elastic File System (Amazon EFS),
    the value of `Owner` is `efs.amazonaws.com`.

When listing private hosted zones, the hosted zone and the Amazon VPC
must belong to the same partition where the hosted zones were created. A
partition is a group of Amazon Web Services Regions. Each Amazon Web
Services account is scoped to one partition.

The following are the supported partitions:

-   `aws` - Amazon Web Services Regions

-   `aws-cn` - China Regions

-   `aws-us-gov` - Amazon Web Services GovCloud (US) Region

For more information, see [Access
Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
in the *Amazon Web Services General Reference*.

### Usage

    route53_list_hosted_zones_by_vpc(VPCId, VPCRegion, MaxItems, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_list_hosted_zones_by_vpc_:_VPCId">VPCId</code></td>
<td><p>[required] The ID of the Amazon VPC that you want to list hosted
zones for.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_hosted_zones_by_vpc_:_VPCRegion">VPCRegion</code></td>
<td><p>[required] For the Amazon VPC that you specified for
<code>VPCId</code>, the Amazon Web Services Region that you created the
VPC in.</p></td>
</tr>
<tr class="odd">
<td><code
id="route53_list_hosted_zones_by_vpc_:_MaxItems">MaxItems</code></td>
<td><p>(Optional) The maximum number of hosted zones that you want
Amazon Route 53 to return. If the specified VPC is associated with more
than <code>MaxItems</code> hosted zones, the response includes a
<code>NextToken</code> element. <code>NextToken</code> contains an
encrypted token that identifies the first hosted zone that Route 53 will
return if you submit another request.</p></td>
</tr>
<tr class="even">
<td><code
id="route53_list_hosted_zones_by_vpc_:_NextToken">NextToken</code></td>
<td><p>If the previous response included a <code>NextToken</code>
element, the specified VPC is associated with more hosted zones. To get
more hosted zones, submit another <code>list_hosted_zones_by_vpc</code>
request.</p>
<p>For the value of <code>NextToken</code>, specify the value of
<code>NextToken</code> from the previous response.</p>
<p>If the previous response didn't include a <code>NextToken</code>
element, there are no more hosted zones to get.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HostedZoneSummaries = list(
        list(
          HostedZoneId = "string",
          Name = "string",
          Owner = list(
            OwningAccount = "string",
            OwningService = "string"
          )
        )
      ),
      MaxItems = "string",
      NextToken = "string"
    )

### Request syntax

    svc$list_hosted_zones_by_vpc(
      VPCId = "string",
      VPCRegion = "us-east-1"|"us-east-2"|"us-west-1"|"us-west-2"|"eu-west-1"|"eu-west-2"|"eu-west-3"|"eu-central-1"|"eu-central-2"|"ap-east-1"|"me-south-1"|"us-gov-west-1"|"us-gov-east-1"|"us-iso-east-1"|"us-iso-west-1"|"us-isob-east-1"|"me-central-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-southeast-3"|"ap-south-1"|"ap-south-2"|"ap-northeast-1"|"ap-northeast-2"|"ap-northeast-3"|"eu-north-1"|"sa-east-1"|"ca-central-1"|"cn-north-1"|"af-south-1"|"eu-south-1"|"eu-south-2"|"ap-southeast-4",
      MaxItems = "string",
      NextToken = "string"
    )
