<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_create_notification</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a notification

### Description

Creates a notification. You must create the budget before you create the
associated notification.

### Usage

    budgets_create_notification(AccountId, BudgetName, Notification,
      Subscribers)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_create_notification_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budget that you want to create a notification for.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_create_notification_:_BudgetName">BudgetName</code></td>
<td><p>[required] The name of the budget that you want Amazon Web
Services to notify you about. Budget names must be unique within an
account.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_create_notification_:_Notification">Notification</code></td>
<td><p>[required] The notification that you want to create.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_create_notification_:_Subscribers">Subscribers</code></td>
<td><p>[required] A list of subscribers that you want to associate with
the notification. Each notification can have one SNS subscriber and up
to 10 email subscribers.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_notification(
      AccountId = "string",
      BudgetName = "string",
      Notification = list(
        NotificationType = "ACTUAL"|"FORECASTED",
        ComparisonOperator = "GREATER_THAN"|"LESS_THAN"|"EQUAL_TO",
        Threshold = 123.0,
        ThresholdType = "PERCENTAGE"|"ABSOLUTE_VALUE",
        NotificationState = "OK"|"ALARM"
      ),
      Subscribers = list(
        list(
          SubscriptionType = "SNS"|"EMAIL",
          Address = "string"
        )
      )
    )
