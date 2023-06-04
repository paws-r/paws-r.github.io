<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_delete_subscriber</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a subscriber

### Description

Deletes a subscriber.

Deleting the last subscriber to a notification also deletes the
notification.

### Usage

    budgets_delete_subscriber(AccountId, BudgetName, Notification,
      Subscriber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_delete_subscriber_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budget whose subscriber you want to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_delete_subscriber_:_BudgetName">BudgetName</code></td>
<td><p>[required] The name of the budget whose subscriber you want to
delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_delete_subscriber_:_Notification">Notification</code></td>
<td><p>[required] The notification whose subscriber you want to
delete.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_delete_subscriber_:_Subscriber">Subscriber</code></td>
<td><p>[required] The subscriber that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_subscriber(
      AccountId = "string",
      BudgetName = "string",
      Notification = list(
        NotificationType = "ACTUAL"|"FORECASTED",
        ComparisonOperator = "GREATER_THAN"|"LESS_THAN"|"EQUAL_TO",
        Threshold = 123.0,
        ThresholdType = "PERCENTAGE"|"ABSOLUTE_VALUE",
        NotificationState = "OK"|"ALARM"
      ),
      Subscriber = list(
        SubscriptionType = "SNS"|"EMAIL",
        Address = "string"
      )
    )
