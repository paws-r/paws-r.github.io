<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_create_monitoring_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Enables additional CloudWatch metrics for the specified CloudFront distribution

### Description

Enables additional CloudWatch metrics for the specified CloudFront
distribution. The additional metrics incur an additional cost.

For more information, see [Viewing additional CloudFront distribution
metrics](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/viewing-cloudfront-metrics.html#monitoring-console.distributions-additional)
in the *Amazon CloudFront Developer Guide*.

### Usage

    cloudfront_create_monitoring_subscription(DistributionId,
      MonitoringSubscription)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_create_monitoring_subscription_:_DistributionId">DistributionId</code></td>
<td><p>[required] The ID of the distribution that you are enabling
metrics for.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_create_monitoring_subscription_:_MonitoringSubscription">MonitoringSubscription</code></td>
<td><p>[required] A monitoring subscription. This structure contains
information about whether additional CloudWatch metrics are enabled for
a given CloudFront distribution.</p></td>
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

    svc$create_monitoring_subscription(
      DistributionId = "string",
      MonitoringSubscription = list(
        RealtimeMetricsSubscriptionConfig = list(
          RealtimeMetricsSubscriptionStatus = "Enabled"|"Disabled"
        )
      )
    )
