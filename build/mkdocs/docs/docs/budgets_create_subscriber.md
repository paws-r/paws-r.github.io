<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_create_subscriber</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a subscriber

### Description

Creates a subscriber. You must create the associated budget and
notification before you create the subscriber.

### Usage

    budgets_create_subscriber(AccountId, BudgetName, Notification,
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
id="budgets_create_subscriber_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budget that you want to create a subscriber for.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_create_subscriber_:_BudgetName">BudgetName</code></td>
<td><p>[required] The name of the budget that you want to subscribe to.
Budget names must be unique within an account.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_create_subscriber_:_Notification">Notification</code></td>
<td><p>[required] The notification that you want to create a subscriber
for.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_create_subscriber_:_Subscriber">Subscriber</code></td>
<td><p>[required] The subscriber that you want to associate with a
budget notification.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_subscriber(
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
