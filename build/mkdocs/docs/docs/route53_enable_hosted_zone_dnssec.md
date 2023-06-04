<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_enable_hosted_zone_dnssec</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables DNSSEC signing in a specific hosted zone

### Description

Enables DNSSEC signing in a specific hosted zone.

### Usage

    route53_enable_hosted_zone_dnssec(HostedZoneId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_enable_hosted_zone_dnssec_:_HostedZoneId">HostedZoneId</code></td>
<td><p>[required] A unique string used to identify a hosted
zone.</p></td>
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

    svc$enable_hosted_zone_dnssec(
      HostedZoneId = "string"
    )
