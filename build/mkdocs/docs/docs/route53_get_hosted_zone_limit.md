<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_hosted_zone_limit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the specified limit for a specified hosted zone, for example, the maximum number of records that you can create in the hosted zone

### Description

Gets the specified limit for a specified hosted zone, for example, the
maximum number of records that you can create in the hosted zone.

For the default limit, see
[Limits](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html)
in the *Amazon Route 53 Developer Guide*. To request a higher limit,
open a case.

### Usage

    route53_get_hosted_zone_limit(Type, HostedZoneId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="route53_get_hosted_zone_limit_:_Type">Type</code></td>
<td><p>[required] The limit that you want to get. Valid values include
the following:</p>
<ul>
<li><p><strong>MAX_RRSETS_BY_ZONE</strong>: The maximum number of
records that you can create in the specified hosted zone.</p></li>
<li><p><strong>MAX_VPCS_ASSOCIATED_BY_ZONE</strong>: The maximum number
of Amazon VPCs that you can associate with the specified private hosted
zone.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="route53_get_hosted_zone_limit_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] The ID of the hosted zone that you want to get a limit
for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Limit = list(
        Type = "MAX_RRSETS_BY_ZONE"|"MAX_VPCS_ASSOCIATED_BY_ZONE",
        Value = 123
      ),
      Count = 123
    )

### Request syntax

    svc$get_hosted_zone_limit(
      Type = "MAX_RRSETS_BY_ZONE"|"MAX_VPCS_ASSOCIATED_BY_ZONE",
      HostedZoneId = "string"
    )
