<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_monitoring_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Disables additional CloudWatch metrics for the specified CloudFront distribution

### Description

Disables additional CloudWatch metrics for the specified CloudFront
distribution.

### Usage

    cloudfront_delete_monitoring_subscription(DistributionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_delete_monitoring_subscription_:_DistributionId">DistributionId</code></td>
<td><p>[required] The ID of the distribution that you are disabling
metrics for.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_monitoring_subscription(
      DistributionId = "string"
    )
