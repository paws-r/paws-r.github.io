<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>budgets_update_notification</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a notification

### Description

Updates a notification.

### Usage

    budgets_update_notification(AccountId, BudgetName, OldNotification,
      NewNotification)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="budgets_update_notification_:_AccountId">AccountId</code></td>
<td><p>[required] The <code>accountId</code> that is associated with the
budget whose notification you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_update_notification_:_BudgetName">BudgetName</code></td>
<td><p>[required] The name of the budget whose notification you want to
update.</p></td>
</tr>
<tr class="odd">
<td><code
id="budgets_update_notification_:_OldNotification">OldNotification</code></td>
<td><p>[required] The previous notification that is associated with a
budget.</p></td>
</tr>
<tr class="even">
<td><code
id="budgets_update_notification_:_NewNotification">NewNotification</code></td>
<td><p>[required] The updated notification to be associated with a
budget.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_notification(
      AccountId = "string",
      BudgetName = "string",
      OldNotification = list(
        NotificationType = "ACTUAL"|"FORECASTED",
        ComparisonOperator = "GREATER_THAN"|"LESS_THAN"|"EQUAL_TO",
        Threshold = 123.0,
        ThresholdType = "PERCENTAGE"|"ABSOLUTE_VALUE",
        NotificationState = "OK"|"ALARM"
      ),
      NewNotification = list(
        NotificationType = "ACTUAL"|"FORECASTED",
        ComparisonOperator = "GREATER_THAN"|"LESS_THAN"|"EQUAL_TO",
        Threshold = 123.0,
        ThresholdType = "PERCENTAGE"|"ABSOLUTE_VALUE",
        NotificationState = "OK"|"ALARM"
      )
    )
