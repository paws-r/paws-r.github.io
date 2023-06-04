<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_delete_event_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an RDS event notification subscription

### Description

Deletes an RDS event notification subscription.

### Usage

    rds_delete_event_subscription(SubscriptionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_delete_event_subscription_:_SubscriptionName">SubscriptionName</code></td>
<td><p>[required] The name of the RDS event notification subscription
you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EventSubscription = list(
        CustomerAwsId = "string",
        CustSubscriptionId = "string",
        SnsTopicArn = "string",
        Status = "string",
        SubscriptionCreationTime = "string",
        SourceType = "string",
        SourceIdsList = list(
          "string"
        ),
        EventCategoriesList = list(
          "string"
        ),
        Enabled = TRUE|FALSE,
        EventSubscriptionArn = "string"
      )
    )

### Request syntax

    svc$delete_event_subscription(
      SubscriptionName = "string"
    )
