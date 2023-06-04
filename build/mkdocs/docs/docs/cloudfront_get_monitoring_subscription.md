<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_get_monitoring_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about whether additional CloudWatch metrics are enabled for the specified CloudFront distribution

### Description

Gets information about whether additional CloudWatch metrics are enabled
for the specified CloudFront distribution.

### Usage

    cloudfront_get_monitoring_subscription(DistributionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_get_monitoring_subscription_:_DistributionId">DistributionId</code></td>
<td><p>[required] The ID of the distribution that you are getting
metrics information for.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MonitoringSubscription = list(
        RealtimeMetricsSubscriptionConfig = list(
          RealtimeMetricsSubscriptionStatus = "Enabled"|"Disabled"
        )
      )
    )

### Request syntax

    svc$get_monitoring_subscription(
      DistributionId = "string"
    )
