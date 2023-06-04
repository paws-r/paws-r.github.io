<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_health_check_count</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the number of health checks that are associated with the current Amazon Web Services account

### Description

Retrieves the number of health checks that are associated with the
current Amazon Web Services account.

### Usage

    route53_get_health_check_count()

### Value

A list with the following syntax:

    list(
      HealthCheckCount = 123
    )

### Request syntax

    svc$get_health_check_count()
