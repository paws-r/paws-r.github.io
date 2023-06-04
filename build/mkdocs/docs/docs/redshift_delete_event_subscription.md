<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_event_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon Redshift event notification subscription

### Description

Deletes an Amazon Redshift event notification subscription.

### Usage

    redshift_delete_event_subscription(SubscriptionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_event_subscription_:_SubscriptionName">SubscriptionName</code></td>
<td><p>[required] The name of the Amazon Redshift event notification
subscription to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_event_subscription(
      SubscriptionName = "string"
    )
