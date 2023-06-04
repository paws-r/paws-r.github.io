<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_delete_event_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Amazon DocumentDB event notification subscription

### Description

Deletes an Amazon DocumentDB event notification subscription.

### Usage

    docdb_delete_event_subscription(SubscriptionName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_delete_event_subscription_:_SubscriptionName">SubscriptionName</code></td>
<td><p>[required] The name of the Amazon DocumentDB event notification
subscription that you want to delete.</p></td>
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
