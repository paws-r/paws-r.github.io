<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_update_subscriber</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a subscriber

### Description

Updates a subscriber.

### Usage

    budgets_update_subscriber(AccountId, BudgetName, Notification,
      OldSubscriber, NewSubscriber)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_update_subscriber_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budget whose subscriber you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_update_subscriber_:_BudgetName">BudgetName</code></td>
<td><p>[required] The name of the budget whose subscriber you want to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_update_subscriber_:_Notification">Notification</code></td>
<td><p>[required] The notification whose subscriber you want to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_update_subscriber_:_OldSubscriber">OldSubscriber</code></td>
<td><p>[required] The previous subscriber that is associated with a
budget notification.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_update_subscriber_:_NewSubscriber">NewSubscriber</code></td>
<td><p>[required] The updated subscriber that is associated with a
budget notification.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_subscriber(
      AccountId = "string",
      BudgetName = "string",
      Notification = list(
        NotificationType = "ACTUAL"|"FORECASTED",
        ComparisonOperator = "GREATER_THAN"|"LESS_THAN"|"EQUAL_TO",
        Threshold = 123.0,
        ThresholdType = "PERCENTAGE"|"ABSOLUTE_VALUE",
        NotificationState = "OK"|"ALARM"
      ),
      OldSubscriber = list(
        SubscriptionType = "SNS"|"EMAIL",
        Address = "string"
      ),
      NewSubscriber = list(
        SubscriptionType = "SNS"|"EMAIL",
        Address = "string"
      )
    )
