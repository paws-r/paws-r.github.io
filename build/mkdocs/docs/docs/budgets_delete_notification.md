<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_delete_notification</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a notification

### Description

Deletes a notification.

Deleting a notification also deletes the subscribers that are associated
with the notification.

### Usage

    budgets_delete_notification(AccountId, BudgetName, Notification)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_delete_notification_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budget whose notification you want to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_delete_notification_:_BudgetName">BudgetName</code></td>
<td><p>[required] The name of the budget whose notification you want to
delete.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_delete_notification_:_Notification">Notification</code></td>
<td><p>[required] The notification that you want to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_notification(
      AccountId = "string",
      BudgetName = "string",
      Notification = list(
        NotificationType = "ACTUAL"|"FORECASTED",
        ComparisonOperator = "GREATER_THAN"|"LESS_THAN"|"EQUAL_TO",
        Threshold = 123.0,
        ThresholdType = "PERCENTAGE"|"ABSOLUTE_VALUE",
        NotificationState = "OK"|"ALARM"
      )
    )
