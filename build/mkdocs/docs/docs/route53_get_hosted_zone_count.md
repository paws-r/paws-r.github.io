<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_hosted_zone_count</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the number of hosted zones that are associated with the current Amazon Web Services account

### Description

Retrieves the number of hosted zones that are associated with the
current Amazon Web Services account.

### Usage

    route53_get_hosted_zone_count()

### Value

A list with the following syntax:

    list(
      HostedZoneCount = 123
    )

### Request syntax

    svc$get_hosted_zone_count()
