<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_remove_source_identifier_from_subscription</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a source identifier from an existing RDS event notification subscription

### Description

Removes a source identifier from an existing RDS event notification
subscription.

### Usage

    rds_remove_source_identifier_from_subscription(SubscriptionName,
      SourceIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_remove_source_identifier_from_subscription_:_SubscriptionName">SubscriptionName</code></td>
<td><p>[required] The name of the RDS event notification subscription
you want to remove a source identifier from.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_remove_source_identifier_from_subscription_:_SourceIdentifier">SourceIdentifier</code></td>
<td><p>[required] The source identifier to be removed from the
subscription, such as the <strong>DB instance identifier</strong> for a
DB instance or the name of a security group.</p></td>
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

    svc$remove_source_identifier_from_subscription(
      SubscriptionName = "string",
      SourceIdentifier = "string"
    )
