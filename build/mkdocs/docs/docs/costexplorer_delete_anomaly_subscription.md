<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>costexplorer_delete_anomaly_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a cost anomaly subscription

### Description

Deletes a cost anomaly subscription.

### Usage

    costexplorer_delete_anomaly_subscription(SubscriptionArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="costexplorer_delete_anomaly_subscription_:_SubscriptionArn">SubscriptionArn</code></td>
<td><p>[required] The unique identifier of the cost anomaly subscription
that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_anomaly_subscription(
      SubscriptionArn = "string"
    )
