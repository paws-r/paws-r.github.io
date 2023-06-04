<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>route53_get_health_check_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets status of a specified health check

### Description

Gets status of a specified health check.

This API is intended for use during development to diagnose behavior. It
doesn’t support production use-cases with high query rates that require
immediate and actionable responses.

### Usage

    route53_get_health_check_status(HealthCheckId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="route53_get_health_check_status_:_HealthCheckId">HealthCheckId</code></td>
<td><p>[required] The ID for the health check that you want the current
status for. When you created the health check,
<code>create_health_check</code> returned the ID in the response, in the
<code>HealthCheckId</code> element.</p>
<p>If you want to check the status of a calculated health check, you
must use the Amazon Route 53 console or the CloudWatch console. You
can't use <code>get_health_check_status</code> to get the status of a
calculated health check.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HealthCheckObservations = list(
        list(
          Region = "us-east-1"|"us-west-1"|"us-west-2"|"eu-west-1"|"ap-southeast-1"|"ap-southeast-2"|"ap-northeast-1"|"sa-east-1",
          IPAddress = "string",
          StatusReport = list(
            Status = "string",
            CheckedTime = as.POSIXct(
              "2015-01-01"
            )
          )
        )
      )
    )

### Request syntax

    svc$get_health_check_status(
      HealthCheckId = "string"
    )
